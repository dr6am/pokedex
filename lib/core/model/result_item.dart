//{"name":"ivysaur","url":"https://pokeapi.co/api/v2/pokemon/2/"}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_item.freezed.dart';
part 'result_item.g.dart';

@freezed
abstract class ResultItem with _$ResultItem {
  const factory ResultItem({
    @Default('') String name,
    @Default('') String url,
  }) = _ResultItem;

  factory ResultItem.fromJson(Map<String, dynamic> json) =>
      _$ResultItemFromJson(json);
}
