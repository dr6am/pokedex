import 'package:http/http.dart';

abstract class PokeApiDataSource {
  Future<Response?> getData(String link);
}
