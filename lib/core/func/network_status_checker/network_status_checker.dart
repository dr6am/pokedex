import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> getNetworkAvailabilityStatus() async {
  //btw it's a bad practice to get network availability status via Connectivity
  //because we have a lot of public wifi networks without internet access
  //it would be better to fetch google.com or 8.8.8.8
  final ConnectivityResult connectivityResult =
      await Connectivity().checkConnectivity();
  print(connectivityResult);
  return connectivityResult != ConnectivityResult.none;
}
