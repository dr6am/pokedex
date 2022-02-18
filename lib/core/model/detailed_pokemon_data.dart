// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:pokedex_test/core/model/result_item.dart';

// part 'detailed_pokemon_data.freezed.dart';
// part 'detailed_pokemon_data.g.dart';

// @freezed
// class DetailedPokemonData with _$DetailedPokemonData {
//   const factory DetailedPokemonData({
// @Default('') String link,
// @Default('') String name,
//sprites->front_default
// @Default('') String previewUrl,
//   }) = _DetailedPokemonData;

//   factory DetailedPokemonData.fromJson(Map<String, dynamic> json) =>
//       _$DetailedPokemonDataFromJson(json);
// }

import 'package:pokedex_test/core/model/poke_data.dart';

class PokeDetailedData {
  PokeDetailedData({required this.sprites, required this.species});

  PokeDetailedData.fromJson(Map<String, dynamic> json) {
    if (json['species'] != null)
      species = PokeData.fromJson(json['species'] as Map<String, dynamic>);
    if (json['sprites'] != null) {
      sprites = PokeSprites.fromJson(json['sprites'] as Map<String, dynamic>);
    }
  }

  late PokeSprites sprites;
  late PokeData species;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['sprites'] = sprites.toJson();

    return data;
  }
}

class PokeSprites {
  PokeSprites({
    this.backDefault = '',
    this.backFemale = '',
    this.backShiny = '',
    this.backShinyFemale = '',
    this.frontDefault = '',
    this.frontFemale = '',
    this.frontShiny = '',
    this.frontShinyFemale = '',
  });

  PokeSprites.fromJson(Map<String, dynamic> json) {
    backDefault = json['back_default'].toString();
    backFemale = json['back_female'].toString();
    backShiny = json['back_shiny'].toString();
    backShinyFemale = json['back_shiny_female'].toString();
    frontDefault = json['front_default'].toString();
    frontFemale = json['front_female'].toString();
    frontShiny = json['front_shiny'].toString();
    frontShinyFemale = json['front_shiny_female'].toString();
  }
  String? backDefault;
  String? backFemale;
  String? backShiny;
  String? backShinyFemale;
  String? frontDefault;
  String? frontFemale;
  String? frontShiny;
  String? frontShinyFemale;
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['back_default'] = backDefault;
    data['back_female'] = backFemale;
    data['back_shiny'] = backShiny;
    data['back_shiny_female'] = backShinyFemale;
    data['front_default'] = frontDefault;
    data['front_female'] = frontFemale;
    data['front_shiny'] = frontShiny;
    data['front_shiny_female'] = frontShinyFemale;

    return data;
  }

  String get photoUrl {
    if (_isPhotoAvalible(frontDefault)) {
      return frontDefault!;
    } else if (_isPhotoAvalible(frontFemale)) {
      return frontFemale!;
    } else if (_isPhotoAvalible(frontShiny)) {
      return frontShiny!;
    } else if (_isPhotoAvalible(backDefault)) {
      return backDefault!;
    }

    return '';
  }

  bool _isPhotoAvalible(String? link) => link != null && link.isNotEmpty;
}
