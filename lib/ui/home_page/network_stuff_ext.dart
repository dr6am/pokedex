part of 'home_page.dart';

extension NetworkStatusStuff on _HomeScreenState {
  Future<void> checkInternetConnection() async {
    await getNetworkAvailabilityStatus();
  }

  void networkStatusListener(ConnectivityResult result) {
    if (result == ConnectivityResult.none && lastNetworkStatus != result) {
      showNoInternetDialog(context);
    }
    // ignore: invalid_use_of_protected_member
    setState(() {
      isNetworkAvalible.value = result != ConnectivityResult.none;
    });
    lastNetworkStatus = result;
  }
}
