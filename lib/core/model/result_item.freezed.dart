// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'result_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultItem _$ResultItemFromJson(Map<String, dynamic> json) {
  return _ResultItem.fromJson(json);
}

/// @nodoc
class _$ResultItemTearOff {
  const _$ResultItemTearOff();

  _ResultItem call({String name = '', String url = ''}) {
    return _ResultItem(
      name: name,
      url: url,
    );
  }

  ResultItem fromJson(Map<String, Object> json) {
    return ResultItem.fromJson(json);
  }
}

/// @nodoc
const $ResultItem = _$ResultItemTearOff();

/// @nodoc
mixin _$ResultItem {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultItemCopyWith<ResultItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultItemCopyWith<$Res> {
  factory $ResultItemCopyWith(
          ResultItem value, $Res Function(ResultItem) then) =
      _$ResultItemCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

/// @nodoc
class _$ResultItemCopyWithImpl<$Res> implements $ResultItemCopyWith<$Res> {
  _$ResultItemCopyWithImpl(this._value, this._then);

  final ResultItem _value;
  // ignore: unused_field
  final $Res Function(ResultItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResultItemCopyWith<$Res> implements $ResultItemCopyWith<$Res> {
  factory _$ResultItemCopyWith(
          _ResultItem value, $Res Function(_ResultItem) then) =
      __$ResultItemCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

/// @nodoc
class __$ResultItemCopyWithImpl<$Res> extends _$ResultItemCopyWithImpl<$Res>
    implements _$ResultItemCopyWith<$Res> {
  __$ResultItemCopyWithImpl(
      _ResultItem _value, $Res Function(_ResultItem) _then)
      : super(_value, (v) => _then(v as _ResultItem));

  @override
  _ResultItem get _value => super._value as _ResultItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_ResultItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultItem implements _ResultItem {
  const _$_ResultItem({this.name = '', this.url = ''});

  factory _$_ResultItem.fromJson(Map<String, dynamic> json) =>
      _$_$_ResultItemFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String name;
  @JsonKey(defaultValue: '')
  @override
  final String url;

  @override
  String toString() {
    return 'ResultItem(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultItem &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$ResultItemCopyWith<_ResultItem> get copyWith =>
      __$ResultItemCopyWithImpl<_ResultItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResultItemToJson(this);
  }
}

abstract class _ResultItem implements ResultItem {
  const factory _ResultItem({String name, String url}) = _$_ResultItem;

  factory _ResultItem.fromJson(Map<String, dynamic> json) =
      _$_ResultItem.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResultItemCopyWith<_ResultItem> get copyWith =>
      throw _privateConstructorUsedError;
}
