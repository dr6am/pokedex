import 'package:http/http.dart';

import 'poke_api_data_source_impl.dart';

class PokeApiDataSourceImpl implements PokeApiDataSource {
  const PokeApiDataSourceImpl({
    required Client client,
  }) : _client = client;
  final Client _client;
  @override
  Future<Response?> getData(String link) async {
    return _client.get(Uri.parse(link));
  }
}
