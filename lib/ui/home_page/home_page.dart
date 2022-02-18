import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:pokedex_test/core/func/network_status_checker/network_status_checker.dart';
import 'package:pokedex_test/core/instances/repositories.dart';
import 'package:pokedex_test/core/model/detailed_pokemon_data.dart';

import 'package:pokedex_test/core/model/list_data.dart';
import 'package:pokedex_test/core/model/poke_data.dart';

part 'network_stuff_ext.dart';
part 'data_manager_ext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Network
  final ValueNotifier<bool> isNetworkAvalible = ValueNotifier<bool>(false);
  ConnectivityResult? lastNetworkStatus;
  late StreamSubscription<ConnectivityResult> networkStatusStream;

  //Data
  ListData? data;

  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _fetch();
    _controller.addListener(scrollListener);
    networkStatusStream =
        Connectivity().onConnectivityChanged.listen(networkStatusListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ValueListenableBuilder<bool>(
          valueListenable: isNetworkAvalible,
          builder:
              (BuildContext context, bool isNetworkAvalible, Widget? child) {
            if (isNetworkAvalible) {
              if (data != null) {
                return ListView.builder(
                  controller: _controller,
                  itemCount: data!.results.length,
                  itemBuilder: (BuildContext context, int index) =>
                      _buildTile(context, data!.results.elementAt(index)),
                );
              } else {
                return const Center(child: CupertinoActivityIndicator());
              }
            }
            return Container();
          },
        ),
      ),
    );
  }

  Future<Widget?> showNoInternetDialog(BuildContext context) {
    return showDialog<Widget>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Center(
            child: Container(
              color: Colors.white,
              height: 150,
              width: MediaQuery.of(context).size.width * .6,
              child: Center(
                child: Text(
                  'No internet connection',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          );
        });
  }

  Widget _buildTile(BuildContext context, PokeData data) {
    return StreamBuilder<PokeDetailedData?>(
      stream: loadDetailedData(data.url),
      builder:
          (BuildContext context, AsyncSnapshot<PokeDetailedData?> snapshot) {
        if (snapshot.hasData)
          return ListTile(
            leading: Image.network(
              snapshot.data!.sprites.photoUrl,
            ),
            title: Text(data.name),
            subtitle: Text(data.url),
          );
        else
          return ListTile(
            title: const CircularProgressIndicator.adaptive(),
            subtitle: Container(),
          );
      },
    );
  }

  void scrollListener() {
    if (_controller.position.pixels == _controller.position.maxScrollExtent) {
      _fetch();
    }
  }

  Future<void> _fetch() async {
    final ListData? newData = await loadData(data);
    if (newData != null) {
      setState(() {
        if (data != null) {
          newData.results.insertAll(0, data!.results);
          data = newData;
        } else {
          data ??= newData;
        }
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    networkStatusStream.cancel();
  }
}
