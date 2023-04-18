// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_hiring_job_offer_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteHiringJobOfferListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String hiringJobOfferId)
        favoriteHiringJobOfferToggled,
    required TResult Function(List<String> favoriteHiringJobOffersIds)
        favoriteHiringJobOffersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String hiringJobOfferId)? favoriteHiringJobOfferToggled,
    TResult? Function(List<String> favoriteHiringJobOffersIds)?
        favoriteHiringJobOffersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String hiringJobOfferId)? favoriteHiringJobOfferToggled,
    TResult Function(List<String> favoriteHiringJobOffersIds)?
        favoriteHiringJobOffersChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_FavoriteHiringJobOfferToggled value)
        favoriteHiringJobOfferToggled,
    required TResult Function(_FavoriteHiringJobOffersChanged value)
        favoriteHiringJobOffersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_FavoriteHiringJobOfferToggled value)?
        favoriteHiringJobOfferToggled,
    TResult? Function(_FavoriteHiringJobOffersChanged value)?
        favoriteHiringJobOffersChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_FavoriteHiringJobOfferToggled value)?
        favoriteHiringJobOfferToggled,
    TResult Function(_FavoriteHiringJobOffersChanged value)?
        favoriteHiringJobOffersChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteHiringJobOfferListEventCopyWith<$Res> {
  factory $FavoriteHiringJobOfferListEventCopyWith(
          FavoriteHiringJobOfferListEvent value,
          $Res Function(FavoriteHiringJobOfferListEvent) then) =
      _$FavoriteHiringJobOfferListEventCopyWithImpl<$Res,
          FavoriteHiringJobOfferListEvent>;
}

/// @nodoc
class _$FavoriteHiringJobOfferListEventCopyWithImpl<$Res,
        $Val extends FavoriteHiringJobOfferListEvent>
    implements $FavoriteHiringJobOfferListEventCopyWith<$Res> {
  _$FavoriteHiringJobOfferListEventCopyWithImpl(this._value, this._then);

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
    extends _$FavoriteHiringJobOfferListEventCopyWithImpl<$Res,
        _$_PageRequested> implements _$$_PageRequestedCopyWith<$Res> {
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
    return 'FavoriteHiringJobOfferListEvent.pageRequested(pageKey: $pageKey)';
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
    required TResult Function(String hiringJobOfferId)
        favoriteHiringJobOfferToggled,
    required TResult Function(List<String> favoriteHiringJobOffersIds)
        favoriteHiringJobOffersChanged,
  }) {
    return pageRequested(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String hiringJobOfferId)? favoriteHiringJobOfferToggled,
    TResult? Function(List<String> favoriteHiringJobOffersIds)?
        favoriteHiringJobOffersChanged,
  }) {
    return pageRequested?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String hiringJobOfferId)? favoriteHiringJobOfferToggled,
    TResult Function(List<String> favoriteHiringJobOffersIds)?
        favoriteHiringJobOffersChanged,
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
    required TResult Function(_FavoriteHiringJobOfferToggled value)
        favoriteHiringJobOfferToggled,
    required TResult Function(_FavoriteHiringJobOffersChanged value)
        favoriteHiringJobOffersChanged,
  }) {
    return pageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_FavoriteHiringJobOfferToggled value)?
        favoriteHiringJobOfferToggled,
    TResult? Function(_FavoriteHiringJobOffersChanged value)?
        favoriteHiringJobOffersChanged,
  }) {
    return pageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_FavoriteHiringJobOfferToggled value)?
        favoriteHiringJobOfferToggled,
    TResult Function(_FavoriteHiringJobOffersChanged value)?
        favoriteHiringJobOffersChanged,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(this);
    }
    return orElse();
  }
}

abstract class _PageRequested implements FavoriteHiringJobOfferListEvent {
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
    extends _$FavoriteHiringJobOfferListEventCopyWithImpl<$Res,
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
    return 'FavoriteHiringJobOfferListEvent.refreshRequested()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String hiringJobOfferId)
        favoriteHiringJobOfferToggled,
    required TResult Function(List<String> favoriteHiringJobOffersIds)
        favoriteHiringJobOffersChanged,
  }) {
    return refreshRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String hiringJobOfferId)? favoriteHiringJobOfferToggled,
    TResult? Function(List<String> favoriteHiringJobOffersIds)?
        favoriteHiringJobOffersChanged,
  }) {
    return refreshRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String hiringJobOfferId)? favoriteHiringJobOfferToggled,
    TResult Function(List<String> favoriteHiringJobOffersIds)?
        favoriteHiringJobOffersChanged,
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
    required TResult Function(_FavoriteHiringJobOfferToggled value)
        favoriteHiringJobOfferToggled,
    required TResult Function(_FavoriteHiringJobOffersChanged value)
        favoriteHiringJobOffersChanged,
  }) {
    return refreshRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_FavoriteHiringJobOfferToggled value)?
        favoriteHiringJobOfferToggled,
    TResult? Function(_FavoriteHiringJobOffersChanged value)?
        favoriteHiringJobOffersChanged,
  }) {
    return refreshRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_FavoriteHiringJobOfferToggled value)?
        favoriteHiringJobOfferToggled,
    TResult Function(_FavoriteHiringJobOffersChanged value)?
        favoriteHiringJobOffersChanged,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested(this);
    }
    return orElse();
  }
}

abstract class _RefreshRequested implements FavoriteHiringJobOfferListEvent {
  const factory _RefreshRequested() = _$_RefreshRequested;
}

/// @nodoc
abstract class _$$_FavoriteHiringJobOfferToggledCopyWith<$Res> {
  factory _$$_FavoriteHiringJobOfferToggledCopyWith(
          _$_FavoriteHiringJobOfferToggled value,
          $Res Function(_$_FavoriteHiringJobOfferToggled) then) =
      __$$_FavoriteHiringJobOfferToggledCopyWithImpl<$Res>;
  @useResult
  $Res call({String hiringJobOfferId});
}

/// @nodoc
class __$$_FavoriteHiringJobOfferToggledCopyWithImpl<$Res>
    extends _$FavoriteHiringJobOfferListEventCopyWithImpl<$Res,
        _$_FavoriteHiringJobOfferToggled>
    implements _$$_FavoriteHiringJobOfferToggledCopyWith<$Res> {
  __$$_FavoriteHiringJobOfferToggledCopyWithImpl(
      _$_FavoriteHiringJobOfferToggled _value,
      $Res Function(_$_FavoriteHiringJobOfferToggled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hiringJobOfferId = null,
  }) {
    return _then(_$_FavoriteHiringJobOfferToggled(
      null == hiringJobOfferId
          ? _value.hiringJobOfferId
          : hiringJobOfferId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FavoriteHiringJobOfferToggled
    implements _FavoriteHiringJobOfferToggled {
  const _$_FavoriteHiringJobOfferToggled(this.hiringJobOfferId);

  @override
  final String hiringJobOfferId;

  @override
  String toString() {
    return 'FavoriteHiringJobOfferListEvent.favoriteHiringJobOfferToggled(hiringJobOfferId: $hiringJobOfferId)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteHiringJobOfferToggledCopyWith<_$_FavoriteHiringJobOfferToggled>
      get copyWith => __$$_FavoriteHiringJobOfferToggledCopyWithImpl<
          _$_FavoriteHiringJobOfferToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String hiringJobOfferId)
        favoriteHiringJobOfferToggled,
    required TResult Function(List<String> favoriteHiringJobOffersIds)
        favoriteHiringJobOffersChanged,
  }) {
    return favoriteHiringJobOfferToggled(hiringJobOfferId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String hiringJobOfferId)? favoriteHiringJobOfferToggled,
    TResult? Function(List<String> favoriteHiringJobOffersIds)?
        favoriteHiringJobOffersChanged,
  }) {
    return favoriteHiringJobOfferToggled?.call(hiringJobOfferId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String hiringJobOfferId)? favoriteHiringJobOfferToggled,
    TResult Function(List<String> favoriteHiringJobOffersIds)?
        favoriteHiringJobOffersChanged,
    required TResult orElse(),
  }) {
    if (favoriteHiringJobOfferToggled != null) {
      return favoriteHiringJobOfferToggled(hiringJobOfferId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_FavoriteHiringJobOfferToggled value)
        favoriteHiringJobOfferToggled,
    required TResult Function(_FavoriteHiringJobOffersChanged value)
        favoriteHiringJobOffersChanged,
  }) {
    return favoriteHiringJobOfferToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_FavoriteHiringJobOfferToggled value)?
        favoriteHiringJobOfferToggled,
    TResult? Function(_FavoriteHiringJobOffersChanged value)?
        favoriteHiringJobOffersChanged,
  }) {
    return favoriteHiringJobOfferToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_FavoriteHiringJobOfferToggled value)?
        favoriteHiringJobOfferToggled,
    TResult Function(_FavoriteHiringJobOffersChanged value)?
        favoriteHiringJobOffersChanged,
    required TResult orElse(),
  }) {
    if (favoriteHiringJobOfferToggled != null) {
      return favoriteHiringJobOfferToggled(this);
    }
    return orElse();
  }
}

abstract class _FavoriteHiringJobOfferToggled
    implements FavoriteHiringJobOfferListEvent {
  const factory _FavoriteHiringJobOfferToggled(final String hiringJobOfferId) =
      _$_FavoriteHiringJobOfferToggled;

  String get hiringJobOfferId;
  @JsonKey(ignore: true)
  _$$_FavoriteHiringJobOfferToggledCopyWith<_$_FavoriteHiringJobOfferToggled>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FavoriteHiringJobOffersChangedCopyWith<$Res> {
  factory _$$_FavoriteHiringJobOffersChangedCopyWith(
          _$_FavoriteHiringJobOffersChanged value,
          $Res Function(_$_FavoriteHiringJobOffersChanged) then) =
      __$$_FavoriteHiringJobOffersChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> favoriteHiringJobOffersIds});
}

/// @nodoc
class __$$_FavoriteHiringJobOffersChangedCopyWithImpl<$Res>
    extends _$FavoriteHiringJobOfferListEventCopyWithImpl<$Res,
        _$_FavoriteHiringJobOffersChanged>
    implements _$$_FavoriteHiringJobOffersChangedCopyWith<$Res> {
  __$$_FavoriteHiringJobOffersChangedCopyWithImpl(
      _$_FavoriteHiringJobOffersChanged _value,
      $Res Function(_$_FavoriteHiringJobOffersChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteHiringJobOffersIds = null,
  }) {
    return _then(_$_FavoriteHiringJobOffersChanged(
      null == favoriteHiringJobOffersIds
          ? _value._favoriteHiringJobOffersIds
          : favoriteHiringJobOffersIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_FavoriteHiringJobOffersChanged
    implements _FavoriteHiringJobOffersChanged {
  const _$_FavoriteHiringJobOffersChanged(
      final List<String> favoriteHiringJobOffersIds)
      : _favoriteHiringJobOffersIds = favoriteHiringJobOffersIds;

  final List<String> _favoriteHiringJobOffersIds;
  @override
  List<String> get favoriteHiringJobOffersIds {
    if (_favoriteHiringJobOffersIds is EqualUnmodifiableListView)
      return _favoriteHiringJobOffersIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteHiringJobOffersIds);
  }

  @override
  String toString() {
    return 'FavoriteHiringJobOfferListEvent.favoriteHiringJobOffersChanged(favoriteHiringJobOffersIds: $favoriteHiringJobOffersIds)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteHiringJobOffersChangedCopyWith<_$_FavoriteHiringJobOffersChanged>
      get copyWith => __$$_FavoriteHiringJobOffersChangedCopyWithImpl<
          _$_FavoriteHiringJobOffersChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
    required TResult Function() refreshRequested,
    required TResult Function(String hiringJobOfferId)
        favoriteHiringJobOfferToggled,
    required TResult Function(List<String> favoriteHiringJobOffersIds)
        favoriteHiringJobOffersChanged,
  }) {
    return favoriteHiringJobOffersChanged(favoriteHiringJobOffersIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
    TResult? Function()? refreshRequested,
    TResult? Function(String hiringJobOfferId)? favoriteHiringJobOfferToggled,
    TResult? Function(List<String> favoriteHiringJobOffersIds)?
        favoriteHiringJobOffersChanged,
  }) {
    return favoriteHiringJobOffersChanged?.call(favoriteHiringJobOffersIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    TResult Function()? refreshRequested,
    TResult Function(String hiringJobOfferId)? favoriteHiringJobOfferToggled,
    TResult Function(List<String> favoriteHiringJobOffersIds)?
        favoriteHiringJobOffersChanged,
    required TResult orElse(),
  }) {
    if (favoriteHiringJobOffersChanged != null) {
      return favoriteHiringJobOffersChanged(favoriteHiringJobOffersIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_RefreshRequested value) refreshRequested,
    required TResult Function(_FavoriteHiringJobOfferToggled value)
        favoriteHiringJobOfferToggled,
    required TResult Function(_FavoriteHiringJobOffersChanged value)
        favoriteHiringJobOffersChanged,
  }) {
    return favoriteHiringJobOffersChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_RefreshRequested value)? refreshRequested,
    TResult? Function(_FavoriteHiringJobOfferToggled value)?
        favoriteHiringJobOfferToggled,
    TResult? Function(_FavoriteHiringJobOffersChanged value)?
        favoriteHiringJobOffersChanged,
  }) {
    return favoriteHiringJobOffersChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_RefreshRequested value)? refreshRequested,
    TResult Function(_FavoriteHiringJobOfferToggled value)?
        favoriteHiringJobOfferToggled,
    TResult Function(_FavoriteHiringJobOffersChanged value)?
        favoriteHiringJobOffersChanged,
    required TResult orElse(),
  }) {
    if (favoriteHiringJobOffersChanged != null) {
      return favoriteHiringJobOffersChanged(this);
    }
    return orElse();
  }
}

abstract class _FavoriteHiringJobOffersChanged
    implements FavoriteHiringJobOfferListEvent {
  const factory _FavoriteHiringJobOffersChanged(
          final List<String> favoriteHiringJobOffersIds) =
      _$_FavoriteHiringJobOffersChanged;

  List<String> get favoriteHiringJobOffersIds;
  @JsonKey(ignore: true)
  _$$_FavoriteHiringJobOffersChangedCopyWith<_$_FavoriteHiringJobOffersChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteHiringJobOfferListState {
  PagingState<String?, HiringJobOffer> get pagingState =>
      throw _privateConstructorUsedError;
  List<String> get favoriteHiringJobOfferIds =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteHiringJobOfferListStateCopyWith<FavoriteHiringJobOfferListState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteHiringJobOfferListStateCopyWith<$Res> {
  factory $FavoriteHiringJobOfferListStateCopyWith(
          FavoriteHiringJobOfferListState value,
          $Res Function(FavoriteHiringJobOfferListState) then) =
      _$FavoriteHiringJobOfferListStateCopyWithImpl<$Res,
          FavoriteHiringJobOfferListState>;
  @useResult
  $Res call(
      {PagingState<String?, HiringJobOffer> pagingState,
      List<String> favoriteHiringJobOfferIds});
}

/// @nodoc
class _$FavoriteHiringJobOfferListStateCopyWithImpl<$Res,
        $Val extends FavoriteHiringJobOfferListState>
    implements $FavoriteHiringJobOfferListStateCopyWith<$Res> {
  _$FavoriteHiringJobOfferListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagingState = null,
    Object? favoriteHiringJobOfferIds = null,
  }) {
    return _then(_value.copyWith(
      pagingState: null == pagingState
          ? _value.pagingState
          : pagingState // ignore: cast_nullable_to_non_nullable
              as PagingState<String?, HiringJobOffer>,
      favoriteHiringJobOfferIds: null == favoriteHiringJobOfferIds
          ? _value.favoriteHiringJobOfferIds
          : favoriteHiringJobOfferIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoriteHiringJobOfferListStateCopyWith<$Res>
    implements $FavoriteHiringJobOfferListStateCopyWith<$Res> {
  factory _$$_FavoriteHiringJobOfferListStateCopyWith(
          _$_FavoriteHiringJobOfferListState value,
          $Res Function(_$_FavoriteHiringJobOfferListState) then) =
      __$$_FavoriteHiringJobOfferListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PagingState<String?, HiringJobOffer> pagingState,
      List<String> favoriteHiringJobOfferIds});
}

/// @nodoc
class __$$_FavoriteHiringJobOfferListStateCopyWithImpl<$Res>
    extends _$FavoriteHiringJobOfferListStateCopyWithImpl<$Res,
        _$_FavoriteHiringJobOfferListState>
    implements _$$_FavoriteHiringJobOfferListStateCopyWith<$Res> {
  __$$_FavoriteHiringJobOfferListStateCopyWithImpl(
      _$_FavoriteHiringJobOfferListState _value,
      $Res Function(_$_FavoriteHiringJobOfferListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagingState = null,
    Object? favoriteHiringJobOfferIds = null,
  }) {
    return _then(_$_FavoriteHiringJobOfferListState(
      pagingState: null == pagingState
          ? _value.pagingState
          : pagingState // ignore: cast_nullable_to_non_nullable
              as PagingState<String?, HiringJobOffer>,
      favoriteHiringJobOfferIds: null == favoriteHiringJobOfferIds
          ? _value._favoriteHiringJobOfferIds
          : favoriteHiringJobOfferIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_FavoriteHiringJobOfferListState
    implements _FavoriteHiringJobOfferListState {
  const _$_FavoriteHiringJobOfferListState(
      {this.pagingState = const PagingState(),
      final List<String> favoriteHiringJobOfferIds = const []})
      : _favoriteHiringJobOfferIds = favoriteHiringJobOfferIds;

  @override
  @JsonKey()
  final PagingState<String?, HiringJobOffer> pagingState;
  final List<String> _favoriteHiringJobOfferIds;
  @override
  @JsonKey()
  List<String> get favoriteHiringJobOfferIds {
    if (_favoriteHiringJobOfferIds is EqualUnmodifiableListView)
      return _favoriteHiringJobOfferIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteHiringJobOfferIds);
  }

  @override
  String toString() {
    return 'FavoriteHiringJobOfferListState(pagingState: $pagingState, favoriteHiringJobOfferIds: $favoriteHiringJobOfferIds)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteHiringJobOfferListStateCopyWith<
          _$_FavoriteHiringJobOfferListState>
      get copyWith => __$$_FavoriteHiringJobOfferListStateCopyWithImpl<
          _$_FavoriteHiringJobOfferListState>(this, _$identity);
}

abstract class _FavoriteHiringJobOfferListState
    implements FavoriteHiringJobOfferListState {
  const factory _FavoriteHiringJobOfferListState(
          {final PagingState<String?, HiringJobOffer> pagingState,
          final List<String> favoriteHiringJobOfferIds}) =
      _$_FavoriteHiringJobOfferListState;

  @override
  PagingState<String?, HiringJobOffer> get pagingState;
  @override
  List<String> get favoriteHiringJobOfferIds;
  @override
  @JsonKey(ignore: true)
  _$$_FavoriteHiringJobOfferListStateCopyWith<
          _$_FavoriteHiringJobOfferListState>
      get copyWith => throw _privateConstructorUsedError;
}
