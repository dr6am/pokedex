import 'package:http/http.dart';
import 'package:pokedex_test/core/network/poke_api/data_source/poke_api_data_source.dart';
import 'package:pokedex_test/core/network/poke_api/repository/poke_api_repository_impl.dart';

PokeApiRepositoryImpl pokeApiRepositoryImpl = PokeApiRepositoryImpl(
    pokeApiDataSource: PokeApiDataSourceImpl(client: Client()));
