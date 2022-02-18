import 'package:pokedex_test/core/model/detailed_pokemon_data.dart';
import 'package:pokedex_test/core/model/poke_data.dart';

class ListData {
  ListData(
      {required this.count,
      required this.next,
      this.results = const <PokeData>[]});

  ListData.fromJson(Map<String, dynamic> json) {
    count = int.parse(json['count'].toString());
    next = json['next'].toString();
    results = <PokeData>[];

    for (final dynamic element in json['results'] as List<dynamic>) {
      if (element != null) {
        results.add(PokeData.fromJson(element as Map<String, dynamic>));
      }
    }
  }
  late int count;
  late String next;
  late List<PokeData> results;
  late List<PokeDetailedData> detailedData;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;

    data['results'] = results.map((PokeData v) => v.toJson()).toList();
    return data;
  }
}
