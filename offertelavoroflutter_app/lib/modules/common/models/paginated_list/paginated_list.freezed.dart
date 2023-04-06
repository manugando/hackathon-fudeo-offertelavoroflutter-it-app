// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedList<T> _$PaginatedListFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PaginatedList<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PaginatedList<T> {
  List<T> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_cursor')
  String? get nextCursor => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_more')
  bool get hasMore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedListCopyWith<T, PaginatedList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedListCopyWith<T, $Res> {
  factory $PaginatedListCopyWith(
          PaginatedList<T> value, $Res Function(PaginatedList<T>) then) =
      _$PaginatedListCopyWithImpl<T, $Res, PaginatedList<T>>;
  @useResult
  $Res call(
      {List<T> results,
      @JsonKey(name: 'next_cursor') String? nextCursor,
      @JsonKey(name: 'has_more') bool hasMore});
}

/// @nodoc
class _$PaginatedListCopyWithImpl<T, $Res, $Val extends PaginatedList<T>>
    implements $PaginatedListCopyWith<T, $Res> {
  _$PaginatedListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? nextCursor = freezed,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginatedListCopyWith<T, $Res>
    implements $PaginatedListCopyWith<T, $Res> {
  factory _$$_PaginatedListCopyWith(
          _$_PaginatedList<T> value, $Res Function(_$_PaginatedList<T>) then) =
      __$$_PaginatedListCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> results,
      @JsonKey(name: 'next_cursor') String? nextCursor,
      @JsonKey(name: 'has_more') bool hasMore});
}

/// @nodoc
class __$$_PaginatedListCopyWithImpl<T, $Res>
    extends _$PaginatedListCopyWithImpl<T, $Res, _$_PaginatedList<T>>
    implements _$$_PaginatedListCopyWith<T, $Res> {
  __$$_PaginatedListCopyWithImpl(
      _$_PaginatedList<T> _value, $Res Function(_$_PaginatedList<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? nextCursor = freezed,
    Object? hasMore = null,
  }) {
    return _then(_$_PaginatedList<T>(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<T>,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_PaginatedList<T> implements _PaginatedList<T> {
  const _$_PaginatedList(
      {required final List<T> results,
      @JsonKey(name: 'next_cursor') required this.nextCursor,
      @JsonKey(name: 'has_more') required this.hasMore})
      : _results = results;

  factory _$_PaginatedList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PaginatedListFromJson(json, fromJsonT);

  final List<T> _results;
  @override
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'next_cursor')
  final String? nextCursor;
  @override
  @JsonKey(name: 'has_more')
  final bool hasMore;

  @override
  String toString() {
    return 'PaginatedList<$T>(results: $results, nextCursor: $nextCursor, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedList<T> &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_results), nextCursor, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedListCopyWith<T, _$_PaginatedList<T>> get copyWith =>
      __$$_PaginatedListCopyWithImpl<T, _$_PaginatedList<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_PaginatedListToJson<T>(this, toJsonT);
  }
}

abstract class _PaginatedList<T> implements PaginatedList<T> {
  const factory _PaginatedList(
          {required final List<T> results,
          @JsonKey(name: 'next_cursor') required final String? nextCursor,
          @JsonKey(name: 'has_more') required final bool hasMore}) =
      _$_PaginatedList<T>;

  factory _PaginatedList.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PaginatedList<T>.fromJson;

  @override
  List<T> get results;
  @override
  @JsonKey(name: 'next_cursor')
  String? get nextCursor;
  @override
  @JsonKey(name: 'has_more')
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedListCopyWith<T, _$_PaginatedList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
