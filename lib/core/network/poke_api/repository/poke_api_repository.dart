import 'package:pokedex_test/core/model/detailed_pokemon_data.dart';
import 'package:pokedex_test/core/model/list_data.dart';

abstract class PokeApiRepository {
  Future<ListData?> getInitialData();
  Future<ListData?> getNextData(String link);
  Future<PokeDetailedData?> getDetailedData(String url);
}
