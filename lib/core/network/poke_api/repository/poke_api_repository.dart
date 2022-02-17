import 'package:dartz/dartz.dart';

import 'package:pokedex_test/core/model/default_response.dart';

abstract class PokeApiRepository {
  Future<Either<int, DefaultResponse>> getInitialData();
  Future<Either<int, DefaultResponse>> getAdditionalData(String link);
}
