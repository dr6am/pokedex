import 'dart:convert';

import 'package:http/http.dart';
import 'package:pokedex_test/core/model/detailed_pokemon_data.dart';
import 'package:pokedex_test/core/model/list_data.dart';
import 'package:pokedex_test/core/model/poke_data.dart';
import 'package:pokedex_test/core/network/api_endpoints.dart';
import 'package:pokedex_test/core/network/poke_api/data_source/poke_api_data_source_impl.dart';

import 'poke_api_repository.dart';

class PokeApiRepositoryImpl implements PokeApiRepository {
  const PokeApiRepositoryImpl({
    required PokeApiDataSource pokeApiDataSource,
  }) : _pokeApiDataSource = pokeApiDataSource;
  final PokeApiDataSource _pokeApiDataSource;

  @override
  Future<ListData?> getInitialData() async {
    final Response? response = await _pokeApiDataSource
        .getData(PokeAPI.apiEndpoint + PokeAPI.getInitialPokemonList);
    print(response?.statusCode);
    if (response != null && response.statusCode == 200) {
      print(jsonDecode(response.body) as Map<String, dynamic>);
      print(
          ListData.fromJson(jsonDecode(response.body) as Map<String, dynamic>));
      final ListData data =
          ListData.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      print(data);
      print('passed');
      return data;
    }
  }

  @override
  Future<ListData?> getNextData(String url) async {
    final Response? response = await _pokeApiDataSource.getData(url);
    if (response != null && response.statusCode == 200) {
      final ListData data =
          ListData.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
      return data;
    }
  }

  @override
  Future<PokeDetailedData?> getDetailedData(String url) async {
    final Response? response = await _pokeApiDataSource.getData(url);
    if (response != null && response.statusCode == 200) {
      final PokeDetailedData data = PokeDetailedData.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>);
      return data;
    }
  }
}
