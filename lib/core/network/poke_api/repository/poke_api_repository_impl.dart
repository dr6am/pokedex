import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:pokedex_test/core/model/default_response.dart';
import 'package:pokedex_test/core/network/api_endpoints.dart';
import 'package:pokedex_test/core/network/poke_api/data_source/poke_api_data_source_impl.dart';

import 'poke_api_repository.dart';

class PokeApiRepositoryImpl implements PokeApiRepository {
  const PokeApiRepositoryImpl({
    required PokeApiDataSource pokeApiDataSource,
  }) : _pokeApiDataSource = pokeApiDataSource;
  final PokeApiDataSource _pokeApiDataSource;

  @override
  Future<Either<int, DefaultResponse>> getInitialData() async {
    final Response? response = await _pokeApiDataSource
        .getData(PokeAPI.apiEndpoint + PokeAPI.getInitialPokemonList);
    if (response != null && response.statusCode == 200) {
      final DefaultResponse data =
          DefaultResponse.fromJson(jsonDecode(response.body));
      return Right(data);
    } else {
      return Left(response != null ? response.statusCode : 401);
    }
  }

  @override
  Future<Either<int, DefaultResponse>> getAdditionalData(String link) async {
    final Response? response = await _pokeApiDataSource.getData(link);
    if (response != null && response.statusCode == 200) {
      final DefaultResponse data =
          DefaultResponse.fromJson(jsonDecode(response.body));
      return Right(data);
    } else {
      return Left(response != null ? response.statusCode : 401);
    }
  }
}
