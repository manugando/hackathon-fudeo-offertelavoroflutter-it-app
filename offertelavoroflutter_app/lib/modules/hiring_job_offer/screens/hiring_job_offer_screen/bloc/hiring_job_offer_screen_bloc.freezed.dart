// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hiring_job_offer_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HiringJobOfferScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String searchQuery) searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String searchQuery)? searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String searchQuery)? searchQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiringJobOfferScreenEventCopyWith<$Res> {
  factory $HiringJobOfferScreenEventCopyWith(HiringJobOfferScreenEvent value,
          $Res Function(HiringJobOfferScreenEvent) then) =
      _$HiringJobOfferScreenEventCopyWithImpl<$Res, HiringJobOfferScreenEvent>;
}

/// @nodoc
class _$HiringJobOfferScreenEventCopyWithImpl<$Res,
        $Val extends HiringJobOfferScreenEvent>
    implements $HiringJobOfferScreenEventCopyWith<$Res> {
  _$HiringJobOfferScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PageRequestedCopyWith<$Res> {
  factory _$$_PageRequestedCopyWith(
          _$_PageRequested value, $Res Function(_$_PageRequested) then) =
      __$$_PageRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? pageKey});
}

/// @nodoc
class __$$_PageRequestedCopyWithImpl<$Res>
    extends _$HiringJobOfferScreenEventCopyWithImpl<$Res, _$_PageRequested>
    implements _$$_PageRequestedCopyWith<$Res> {
  __$$_PageRequestedCopyWithImpl(
      _$_PageRequested _value, $Res Function(_$_PageRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = freezed,
  }) {
    return _then(_$_PageRequested(
      freezed == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PageRequested implements _PageRequested {
  const _$_PageRequested(this.pageKey);

  @override
  final String? pageKey;

  @override
  String toString() {
    return 'HiringJobOfferScreenEvent.pageRequested(pageKey: $pageKey)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageRequestedCopyWith<_$_PageRequested> get copyWith =>
      __$$_PageRequestedCopyWithImpl<_$_PageRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String searchQuery) searchQueryChanged,
  }) {
    return pageRequested(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String searchQuery)? searchQueryChanged,
  }) {
    return pageRequested?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String searchQuery)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) {
    return pageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) {
    return pageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(this);
    }
    return orElse();
  }
}

abstract class _PageRequested implements HiringJobOfferScreenEvent {
  const factory _PageRequested(final String? pageKey) = _$_PageRequested;

  String? get pageKey;
  @JsonKey(ignore: true)
  _$$_PageRequestedCopyWith<_$_PageRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshRequestedCopyWith<$Res> {
  factory _$$_RefreshRequestedCopyWith(
          _$_RefreshRequested value, $Res Function(_$_RefreshRequested) then) =
      __$$_RefreshRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshRequestedCopyWithImpl<$Res>
    extends _$HiringJobOfferScreenEventCopyWithImpl<$Res, _$_RefreshRequested>
    implements _$$_RefreshRequestedCopyWith<$Res> {
  __$$_RefreshRequestedCopyWithImpl(
      _$_RefreshRequested _value, $Res Function(_$_RefreshRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshRequested implements _RefreshRequested {
  const _$_RefreshRequested();

  @override
  String toString() {
    return 'HiringJobOfferScreenEvent.refreshRequested()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String searchQuery) searchQueryChanged,
  }) {
    return refreshRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String searchQuery)? searchQueryChanged,
  }) {
    return refreshRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String searchQuery)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) {
    return refreshRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) {
    return refreshRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested(this);
    }
    return orElse();
  }
}

abstract class _RefreshRequested implements HiringJobOfferScreenEvent {
  const factory _RefreshRequested() = _$_RefreshRequested;
}

/// @nodoc
abstract class _$$_SearchQueryChangedCopyWith<$Res> {
  factory _$$_SearchQueryChangedCopyWith(_$_SearchQueryChanged value,
          $Res Function(_$_SearchQueryChanged) then) =
      __$$_SearchQueryChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class __$$_SearchQueryChangedCopyWithImpl<$Res>
    extends _$HiringJobOfferScreenEventCopyWithImpl<$Res, _$_SearchQueryChanged>
    implements _$$_SearchQueryChangedCopyWith<$Res> {
  __$$_SearchQueryChangedCopyWithImpl(
      _$_SearchQueryChanged _value, $Res Function(_$_SearchQueryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(_$_SearchQueryChanged(
      null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchQueryChanged implements _SearchQueryChanged {
  const _$_SearchQueryChanged(this.searchQuery);

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'HiringJobOfferScreenEvent.searchQueryChanged(searchQuery: $searchQuery)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchQueryChangedCopyWith<_$_SearchQueryChanged> get copyWith =>
      __$$_SearchQueryChangedCopyWithImpl<_$_SearchQueryChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String searchQuery) searchQueryChanged,
  }) {
    return searchQueryChanged(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String searchQuery)? searchQueryChanged,
  }) {
    return searchQueryChanged?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String searchQuery)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
  }) {
    return searchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
  }) {
    return searchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchQueryChanged implements HiringJobOfferScreenEvent {
  const factory _SearchQueryChanged(final String searchQuery) =
      _$_SearchQueryChanged;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$_SearchQueryChangedCopyWith<_$_SearchQueryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HiringJobOfferScreenState {
  PagingState<String?, HiringJobOffer> get pagingState =>
      throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HiringJobOfferScreenStateCopyWith<HiringJobOfferScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiringJobOfferScreenStateCopyWith<$Res> {
  factory $HiringJobOfferScreenStateCopyWith(HiringJobOfferScreenState value,
          $Res Function(HiringJobOfferScreenState) then) =
      _$HiringJobOfferScreenStateCopyWithImpl<$Res, HiringJobOfferScreenState>;
  @useResult
  $Res call(
      {PagingState<String?, HiringJobOffer> pagingState, String searchQuery});
}

/// @nodoc
class _$HiringJobOfferScreenStateCopyWithImpl<$Res,
        $Val extends HiringJobOfferScreenState>
    implements $HiringJobOfferScreenStateCopyWith<$Res> {
  _$HiringJobOfferScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagingState = null,
    Object? searchQuery = null,
  }) {
    return _then(_value.copyWith(
      pagingState: null == pagingState
          ? _value.pagingState
          : pagingState // ignore: cast_nullable_to_non_nullable
              as PagingState<String?, HiringJobOffer>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HiringJobOfferScreenStateCopyWith<$Res>
    implements $HiringJobOfferScreenStateCopyWith<$Res> {
  factory _$$_HiringJobOfferScreenStateCopyWith(
          _$_HiringJobOfferScreenState value,
          $Res Function(_$_HiringJobOfferScreenState) then) =
      __$$_HiringJobOfferScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PagingState<String?, HiringJobOffer> pagingState, String searchQuery});
}

/// @nodoc
class __$$_HiringJobOfferScreenStateCopyWithImpl<$Res>
    extends _$HiringJobOfferScreenStateCopyWithImpl<$Res,
        _$_HiringJobOfferScreenState>
    implements _$$_HiringJobOfferScreenStateCopyWith<$Res> {
  __$$_HiringJobOfferScreenStateCopyWithImpl(
      _$_HiringJobOfferScreenState _value,
      $Res Function(_$_HiringJobOfferScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagingState = null,
    Object? searchQuery = null,
  }) {
    return _then(_$_HiringJobOfferScreenState(
      pagingState: null == pagingState
          ? _value.pagingState
          : pagingState // ignore: cast_nullable_to_non_nullable
              as PagingState<String?, HiringJobOffer>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HiringJobOfferScreenState implements _HiringJobOfferScreenState {
  const _$_HiringJobOfferScreenState(
      {this.pagingState = const PagingState(), this.searchQuery = ''});

  @override
  @JsonKey()
  final PagingState<String?, HiringJobOffer> pagingState;
  @override
  @JsonKey()
  final String searchQuery;

  @override
  String toString() {
    return 'HiringJobOfferScreenState(pagingState: $pagingState, searchQuery: $searchQuery)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HiringJobOfferScreenStateCopyWith<_$_HiringJobOfferScreenState>
      get copyWith => __$$_HiringJobOfferScreenStateCopyWithImpl<
          _$_HiringJobOfferScreenState>(this, _$identity);
}

abstract class _HiringJobOfferScreenState implements HiringJobOfferScreenState {
  const factory _HiringJobOfferScreenState(
      {final PagingState<String?, HiringJobOffer> pagingState,
      final String searchQuery}) = _$_HiringJobOfferScreenState;

  @override
  PagingState<String?, HiringJobOffer> get pagingState;
  @override
  String get searchQuery;
  @override
  @JsonKey(ignore: true)
  _$$_HiringJobOfferScreenStateCopyWith<_$_HiringJobOfferScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
