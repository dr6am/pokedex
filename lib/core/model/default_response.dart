import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_test/core/model/result_item.dart';

part 'default_response.freezed.dart';
part 'default_response.g.dart';

@freezed
abstract class DefaultResponse with _$DefaultResponse {
  const factory DefaultResponse({
    @Default(0) int count,
    String? next,
    String? previous,
    @Default(<ResultItem>[]) List<ResultItem> results,
  }) = _DefaultResponse;

  factory DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$DefaultResponseFromJson(json);
}
