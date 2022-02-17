// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'default_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefaultResponse _$DefaultResponseFromJson(Map<String, dynamic> json) {
  return _DefaultResponse.fromJson(json);
}

/// @nodoc
class _$DefaultResponseTearOff {
  const _$DefaultResponseTearOff();

  _DefaultResponse call(
      {int count = 0,
      String? next,
      String? previous,
      List<ResultItem> results = const <ResultItem>[]}) {
    return _DefaultResponse(
      count: count,
      next: next,
      previous: previous,
      results: results,
    );
  }

  DefaultResponse fromJson(Map<String, Object> json) {
    return DefaultResponse.fromJson(json);
  }
}

/// @nodoc
const $DefaultResponse = _$DefaultResponseTearOff();

/// @nodoc
mixin _$DefaultResponse {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<ResultItem> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultResponseCopyWith<DefaultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultResponseCopyWith<$Res> {
  factory $DefaultResponseCopyWith(
          DefaultResponse value, $Res Function(DefaultResponse) then) =
      _$DefaultResponseCopyWithImpl<$Res>;
  $Res call(
      {int count, String? next, String? previous, List<ResultItem> results});
}

/// @nodoc
class _$DefaultResponseCopyWithImpl<$Res>
    implements $DefaultResponseCopyWith<$Res> {
  _$DefaultResponseCopyWithImpl(this._value, this._then);

  final DefaultResponse _value;
  // ignore: unused_field
  final $Res Function(DefaultResponse) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultItem>,
    ));
  }
}

/// @nodoc
abstract class _$DefaultResponseCopyWith<$Res>
    implements $DefaultResponseCopyWith<$Res> {
  factory _$DefaultResponseCopyWith(
          _DefaultResponse value, $Res Function(_DefaultResponse) then) =
      __$DefaultResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count, String? next, String? previous, List<ResultItem> results});
}

/// @nodoc
class __$DefaultResponseCopyWithImpl<$Res>
    extends _$DefaultResponseCopyWithImpl<$Res>
    implements _$DefaultResponseCopyWith<$Res> {
  __$DefaultResponseCopyWithImpl(
      _DefaultResponse _value, $Res Function(_DefaultResponse) _then)
      : super(_value, (v) => _then(v as _DefaultResponse));

  @override
  _DefaultResponse get _value => super._value as _DefaultResponse;

  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_DefaultResponse(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefaultResponse implements _DefaultResponse {
  const _$_DefaultResponse(
      {this.count = 0,
      this.next,
      this.previous,
      this.results = const <ResultItem>[]});

  factory _$_DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DefaultResponseFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @JsonKey(defaultValue: const <ResultItem>[])
  @override
  final List<ResultItem> results;

  @override
  String toString() {
    return 'DefaultResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DefaultResponse &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.next, next) ||
                const DeepCollectionEquality().equals(other.next, next)) &&
            (identical(other.previous, previous) ||
                const DeepCollectionEquality()
                    .equals(other.previous, previous)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(next) ^
      const DeepCollectionEquality().hash(previous) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$DefaultResponseCopyWith<_DefaultResponse> get copyWith =>
      __$DefaultResponseCopyWithImpl<_DefaultResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DefaultResponseToJson(this);
  }
}

abstract class _DefaultResponse implements DefaultResponse {
  const factory _DefaultResponse(
      {int count,
      String? next,
      String? previous,
      List<ResultItem> results}) = _$_DefaultResponse;

  factory _DefaultResponse.fromJson(Map<String, dynamic> json) =
      _$_DefaultResponse.fromJson;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  String? get next => throw _privateConstructorUsedError;
  @override
  String? get previous => throw _privateConstructorUsedError;
  @override
  List<ResultItem> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DefaultResponseCopyWith<_DefaultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
