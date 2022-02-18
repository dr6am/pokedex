//{"name":"ivysaur","url":"https://pokeapi.co/api/v2/pokemon/2/"}

class PokeData {
  PokeData({required this.name, required this.url});
  PokeData.fromJson(Map<String, dynamic> json) {
    name = json['name'].toString();
    url = json['url'].toString();
  }
  late String name;
  late String url;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}
