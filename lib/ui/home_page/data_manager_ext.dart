part of './home_page.dart';

extension DataManager on _HomeScreenState {
  Future<ListData?> loadData(ListData? currData) async {
    late ListData? data;
    if (currData == null) {
      data = await pokeApiRepositoryImpl.getInitialData();
    } else if (currData.next.isNotEmpty) {
      data = await pokeApiRepositoryImpl.getNextData(currData.next);
    }
    if (data == null) {
      return null;
    }

    return data;
  }

  Stream<PokeDetailedData?> loadDetailedData(String url) async* {
    yield* pokeApiRepositoryImpl.getDetailedData(url).asStream();
  }
}
