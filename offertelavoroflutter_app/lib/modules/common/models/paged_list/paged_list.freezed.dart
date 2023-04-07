// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PagedList<T> {
  List<T> get results => throw _privateConstructorUsedError;
  String? get nextCursor => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PagedListCopyWith<T, PagedList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedListCopyWith<T, $Res> {
  factory $PagedListCopyWith(
          PagedList<T> value, $Res Function(PagedList<T>) then) =
      _$PagedListCopyWithImpl<T, $Res, PagedList<T>>;
  @useResult
  $Res call({List<T> results, String? nextCursor, bool hasMore});
}

/// @nodoc
class _$PagedListCopyWithImpl<T, $Res, $Val extends PagedList<T>>
    implements $PagedListCopyWith<T, $Res> {
  _$PagedListCopyWithImpl(this._value, this._then);

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
abstract class _$$_PagedListCopyWith<T, $Res>
    implements $PagedListCopyWith<T, $Res> {
  factory _$$_PagedListCopyWith(
          _$_PagedList<T> value, $Res Function(_$_PagedList<T>) then) =
      __$$_PagedListCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> results, String? nextCursor, bool hasMore});
}

/// @nodoc
class __$$_PagedListCopyWithImpl<T, $Res>
    extends _$PagedListCopyWithImpl<T, $Res, _$_PagedList<T>>
    implements _$$_PagedListCopyWith<T, $Res> {
  __$$_PagedListCopyWithImpl(
      _$_PagedList<T> _value, $Res Function(_$_PagedList<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? nextCursor = freezed,
    Object? hasMore = null,
  }) {
    return _then(_$_PagedList<T>(
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

class _$_PagedList<T> implements _PagedList<T> {
  const _$_PagedList(
      {required final List<T> results,
      required this.nextCursor,
      required this.hasMore})
      : _results = results;

  final List<T> _results;
  @override
  List<T> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final String? nextCursor;
  @override
  final bool hasMore;

  @override
  String toString() {
    return 'PagedList<$T>(results: $results, nextCursor: $nextCursor, hasMore: $hasMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PagedList<T> &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_results), nextCursor, hasMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PagedListCopyWith<T, _$_PagedList<T>> get copyWith =>
      __$$_PagedListCopyWithImpl<T, _$_PagedList<T>>(this, _$identity);
}

abstract class _PagedList<T> implements PagedList<T> {
  const factory _PagedList(
      {required final List<T> results,
      required final String? nextCursor,
      required final bool hasMore}) = _$_PagedList<T>;

  @override
  List<T> get results;
  @override
  String? get nextCursor;
  @override
  bool get hasMore;
  @override
  @JsonKey(ignore: true)
  _$$_PagedListCopyWith<T, _$_PagedList<T>> get copyWith =>
      throw _privateConstructorUsedError;
}