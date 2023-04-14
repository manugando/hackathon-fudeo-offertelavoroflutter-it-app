// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hiring_job_offer_list_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HiringJobOfferListScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String searchQuery) searchQueryChanged,
    required TResult Function(HiringJobOfferFilters filters) filtersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String searchQuery)? searchQueryChanged,
    TResult? Function(HiringJobOfferFilters filters)? filtersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String searchQuery)? searchQueryChanged,
    TResult Function(HiringJobOfferFilters filters)? filtersChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_FiltersChanged value) filtersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_FiltersChanged value)? filtersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_FiltersChanged value)? filtersChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiringJobOfferListScreenEventCopyWith<$Res> {
  factory $HiringJobOfferListScreenEventCopyWith(
          HiringJobOfferListScreenEvent value,
          $Res Function(HiringJobOfferListScreenEvent) then) =
      _$HiringJobOfferListScreenEventCopyWithImpl<$Res,
          HiringJobOfferListScreenEvent>;
}

/// @nodoc
class _$HiringJobOfferListScreenEventCopyWithImpl<$Res,
        $Val extends HiringJobOfferListScreenEvent>
    implements $HiringJobOfferListScreenEventCopyWith<$Res> {
  _$HiringJobOfferListScreenEventCopyWithImpl(this._value, this._then);

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
    extends _$HiringJobOfferListScreenEventCopyWithImpl<$Res, _$_PageRequested>
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
    return 'HiringJobOfferListScreenEvent.pageRequested(pageKey: $pageKey)';
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
    required TResult Function(HiringJobOfferFilters filters) filtersChanged,
  }) {
    return pageRequested(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String searchQuery)? searchQueryChanged,
    TResult? Function(HiringJobOfferFilters filters)? filtersChanged,
  }) {
    return pageRequested?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String searchQuery)? searchQueryChanged,
    TResult Function(HiringJobOfferFilters filters)? filtersChanged,
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
    required TResult Function(_FiltersChanged value) filtersChanged,
  }) {
    return pageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_FiltersChanged value)? filtersChanged,
  }) {
    return pageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_FiltersChanged value)? filtersChanged,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(this);
    }
    return orElse();
  }
}

abstract class _PageRequested implements HiringJobOfferListScreenEvent {
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
    extends _$HiringJobOfferListScreenEventCopyWithImpl<$Res,
        _$_RefreshRequested> implements _$$_RefreshRequestedCopyWith<$Res> {
  __$$_RefreshRequestedCopyWithImpl(
      _$_RefreshRequested _value, $Res Function(_$_RefreshRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshRequested implements _RefreshRequested {
  const _$_RefreshRequested();

  @override
  String toString() {
    return 'HiringJobOfferListScreenEvent.refreshRequested()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String searchQuery) searchQueryChanged,
    required TResult Function(HiringJobOfferFilters filters) filtersChanged,
  }) {
    return refreshRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String searchQuery)? searchQueryChanged,
    TResult? Function(HiringJobOfferFilters filters)? filtersChanged,
  }) {
    return refreshRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String searchQuery)? searchQueryChanged,
    TResult Function(HiringJobOfferFilters filters)? filtersChanged,
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
    required TResult Function(_FiltersChanged value) filtersChanged,
  }) {
    return refreshRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_FiltersChanged value)? filtersChanged,
  }) {
    return refreshRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_FiltersChanged value)? filtersChanged,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested(this);
    }
    return orElse();
  }
}

abstract class _RefreshRequested implements HiringJobOfferListScreenEvent {
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
    extends _$HiringJobOfferListScreenEventCopyWithImpl<$Res,
        _$_SearchQueryChanged> implements _$$_SearchQueryChangedCopyWith<$Res> {
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
    return 'HiringJobOfferListScreenEvent.searchQueryChanged(searchQuery: $searchQuery)';
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
    required TResult Function(HiringJobOfferFilters filters) filtersChanged,
  }) {
    return searchQueryChanged(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String searchQuery)? searchQueryChanged,
    TResult? Function(HiringJobOfferFilters filters)? filtersChanged,
  }) {
    return searchQueryChanged?.call(searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String searchQuery)? searchQueryChanged,
    TResult Function(HiringJobOfferFilters filters)? filtersChanged,
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
    required TResult Function(_FiltersChanged value) filtersChanged,
  }) {
    return searchQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_FiltersChanged value)? filtersChanged,
  }) {
    return searchQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_FiltersChanged value)? filtersChanged,
    required TResult orElse(),
  }) {
    if (searchQueryChanged != null) {
      return searchQueryChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchQueryChanged implements HiringJobOfferListScreenEvent {
  const factory _SearchQueryChanged(final String searchQuery) =
      _$_SearchQueryChanged;

  String get searchQuery;
  @JsonKey(ignore: true)
  _$$_SearchQueryChangedCopyWith<_$_SearchQueryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FiltersChangedCopyWith<$Res> {
  factory _$$_FiltersChangedCopyWith(
          _$_FiltersChanged value, $Res Function(_$_FiltersChanged) then) =
      __$$_FiltersChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({HiringJobOfferFilters filters});

  $HiringJobOfferFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_FiltersChangedCopyWithImpl<$Res>
    extends _$HiringJobOfferListScreenEventCopyWithImpl<$Res, _$_FiltersChanged>
    implements _$$_FiltersChangedCopyWith<$Res> {
  __$$_FiltersChangedCopyWithImpl(
      _$_FiltersChanged _value, $Res Function(_$_FiltersChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$_FiltersChanged(
      null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as HiringJobOfferFilters,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HiringJobOfferFiltersCopyWith<$Res> get filters {
    return $HiringJobOfferFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value));
    });
  }
}

/// @nodoc

class _$_FiltersChanged implements _FiltersChanged {
  const _$_FiltersChanged(this.filters);

  @override
  final HiringJobOfferFilters filters;

  @override
  String toString() {
    return 'HiringJobOfferListScreenEvent.filtersChanged(filters: $filters)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FiltersChangedCopyWith<_$_FiltersChanged> get copyWith =>
      __$$_FiltersChangedCopyWithImpl<_$_FiltersChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String searchQuery) searchQueryChanged,
    required TResult Function(HiringJobOfferFilters filters) filtersChanged,
  }) {
    return filtersChanged(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String searchQuery)? searchQueryChanged,
    TResult? Function(HiringJobOfferFilters filters)? filtersChanged,
  }) {
    return filtersChanged?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String searchQuery)? searchQueryChanged,
    TResult Function(HiringJobOfferFilters filters)? filtersChanged,
    required TResult orElse(),
  }) {
    if (filtersChanged != null) {
      return filtersChanged(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_SearchQueryChanged value) searchQueryChanged,
    required TResult Function(_FiltersChanged value) filtersChanged,
  }) {
    return filtersChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult? Function(_FiltersChanged value)? filtersChanged,
  }) {
    return filtersChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_SearchQueryChanged value)? searchQueryChanged,
    TResult Function(_FiltersChanged value)? filtersChanged,
    required TResult orElse(),
  }) {
    if (filtersChanged != null) {
      return filtersChanged(this);
    }
    return orElse();
  }
}

abstract class _FiltersChanged implements HiringJobOfferListScreenEvent {
  const factory _FiltersChanged(final HiringJobOfferFilters filters) =
      _$_FiltersChanged;

  HiringJobOfferFilters get filters;
  @JsonKey(ignore: true)
  _$$_FiltersChangedCopyWith<_$_FiltersChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HiringJobOfferListScreenState {
  PagingState<String?, HiringJobOffer> get pagingState =>
      throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  HiringJobOfferFilters get filters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HiringJobOfferListScreenStateCopyWith<HiringJobOfferListScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiringJobOfferListScreenStateCopyWith<$Res> {
  factory $HiringJobOfferListScreenStateCopyWith(
          HiringJobOfferListScreenState value,
          $Res Function(HiringJobOfferListScreenState) then) =
      _$HiringJobOfferListScreenStateCopyWithImpl<$Res,
          HiringJobOfferListScreenState>;
  @useResult
  $Res call(
      {PagingState<String?, HiringJobOffer> pagingState,
      String searchQuery,
      HiringJobOfferFilters filters});

  $HiringJobOfferFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class _$HiringJobOfferListScreenStateCopyWithImpl<$Res,
        $Val extends HiringJobOfferListScreenState>
    implements $HiringJobOfferListScreenStateCopyWith<$Res> {
  _$HiringJobOfferListScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagingState = null,
    Object? searchQuery = null,
    Object? filters = null,
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
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as HiringJobOfferFilters,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HiringJobOfferFiltersCopyWith<$Res> get filters {
    return $HiringJobOfferFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HiringJobOfferListScreenStateCopyWith<$Res>
    implements $HiringJobOfferListScreenStateCopyWith<$Res> {
  factory _$$_HiringJobOfferListScreenStateCopyWith(
          _$_HiringJobOfferListScreenState value,
          $Res Function(_$_HiringJobOfferListScreenState) then) =
      __$$_HiringJobOfferListScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PagingState<String?, HiringJobOffer> pagingState,
      String searchQuery,
      HiringJobOfferFilters filters});

  @override
  $HiringJobOfferFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$_HiringJobOfferListScreenStateCopyWithImpl<$Res>
    extends _$HiringJobOfferListScreenStateCopyWithImpl<$Res,
        _$_HiringJobOfferListScreenState>
    implements _$$_HiringJobOfferListScreenStateCopyWith<$Res> {
  __$$_HiringJobOfferListScreenStateCopyWithImpl(
      _$_HiringJobOfferListScreenState _value,
      $Res Function(_$_HiringJobOfferListScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagingState = null,
    Object? searchQuery = null,
    Object? filters = null,
  }) {
    return _then(_$_HiringJobOfferListScreenState(
      pagingState: null == pagingState
          ? _value.pagingState
          : pagingState // ignore: cast_nullable_to_non_nullable
              as PagingState<String?, HiringJobOffer>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as HiringJobOfferFilters,
    ));
  }
}

/// @nodoc

class _$_HiringJobOfferListScreenState
    implements _HiringJobOfferListScreenState {
  const _$_HiringJobOfferListScreenState(
      {this.pagingState = const PagingState(),
      this.searchQuery = '',
      this.filters = const HiringJobOfferFilters()});

  @override
  @JsonKey()
  final PagingState<String?, HiringJobOffer> pagingState;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final HiringJobOfferFilters filters;

  @override
  String toString() {
    return 'HiringJobOfferListScreenState(pagingState: $pagingState, searchQuery: $searchQuery, filters: $filters)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HiringJobOfferListScreenStateCopyWith<_$_HiringJobOfferListScreenState>
      get copyWith => __$$_HiringJobOfferListScreenStateCopyWithImpl<
          _$_HiringJobOfferListScreenState>(this, _$identity);
}

abstract class _HiringJobOfferListScreenState
    implements HiringJobOfferListScreenState {
  const factory _HiringJobOfferListScreenState(
      {final PagingState<String?, HiringJobOffer> pagingState,
      final String searchQuery,
      final HiringJobOfferFilters filters}) = _$_HiringJobOfferListScreenState;

  @override
  PagingState<String?, HiringJobOffer> get pagingState;
  @override
  String get searchQuery;
  @override
  HiringJobOfferFilters get filters;
  @override
  @JsonKey(ignore: true)
  _$$_HiringJobOfferListScreenStateCopyWith<_$_HiringJobOfferListScreenState>
      get copyWith => throw _privateConstructorUsedError;
}