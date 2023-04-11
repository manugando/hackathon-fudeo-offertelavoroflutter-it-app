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
  String? get pageKey => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageRequested value) pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HiringJobOfferScreenEventCopyWith<HiringJobOfferScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiringJobOfferScreenEventCopyWith<$Res> {
  factory $HiringJobOfferScreenEventCopyWith(HiringJobOfferScreenEvent value,
          $Res Function(HiringJobOfferScreenEvent) then) =
      _$HiringJobOfferScreenEventCopyWithImpl<$Res, HiringJobOfferScreenEvent>;
  @useResult
  $Res call({String? pageKey});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = freezed,
  }) {
    return _then(_value.copyWith(
      pageKey: freezed == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageRequestedCopyWith<$Res>
    implements $HiringJobOfferScreenEventCopyWith<$Res> {
  factory _$$_PageRequestedCopyWith(
          _$_PageRequested value, $Res Function(_$_PageRequested) then) =
      __$$_PageRequestedCopyWithImpl<$Res>;
  @override
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

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageRequested &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageRequestedCopyWith<_$_PageRequested> get copyWith =>
      __$$_PageRequestedCopyWithImpl<_$_PageRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pageKey) pageRequested,
  }) {
    return pageRequested(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pageKey)? pageRequested,
  }) {
    return pageRequested?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pageKey)? pageRequested,
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
  }) {
    return pageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageRequested value)? pageRequested,
  }) {
    return pageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageRequested value)? pageRequested,
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

  @override
  String? get pageKey;
  @override
  @JsonKey(ignore: true)
  _$$_PageRequestedCopyWith<_$_PageRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HiringJobOfferScreenState {
  PagingState<String?, HiringJobOffer> get pagingState =>
      throw _privateConstructorUsedError;

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
  $Res call({PagingState<String?, HiringJobOffer> pagingState});
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
  }) {
    return _then(_value.copyWith(
      pagingState: null == pagingState
          ? _value.pagingState
          : pagingState // ignore: cast_nullable_to_non_nullable
              as PagingState<String?, HiringJobOffer>,
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
  $Res call({PagingState<String?, HiringJobOffer> pagingState});
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
  }) {
    return _then(_$_HiringJobOfferScreenState(
      pagingState: null == pagingState
          ? _value.pagingState
          : pagingState // ignore: cast_nullable_to_non_nullable
              as PagingState<String?, HiringJobOffer>,
    ));
  }
}

/// @nodoc

class _$_HiringJobOfferScreenState implements _HiringJobOfferScreenState {
  const _$_HiringJobOfferScreenState({required this.pagingState});

  @override
  final PagingState<String?, HiringJobOffer> pagingState;

  @override
  String toString() {
    return 'HiringJobOfferScreenState(pagingState: $pagingState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HiringJobOfferScreenState &&
            (identical(other.pagingState, pagingState) ||
                other.pagingState == pagingState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pagingState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HiringJobOfferScreenStateCopyWith<_$_HiringJobOfferScreenState>
      get copyWith => __$$_HiringJobOfferScreenStateCopyWithImpl<
          _$_HiringJobOfferScreenState>(this, _$identity);
}

abstract class _HiringJobOfferScreenState implements HiringJobOfferScreenState {
  const factory _HiringJobOfferScreenState(
          {required final PagingState<String?, HiringJobOffer> pagingState}) =
      _$_HiringJobOfferScreenState;

  @override
  PagingState<String?, HiringJobOffer> get pagingState;
  @override
  @JsonKey(ignore: true)
  _$$_HiringJobOfferScreenStateCopyWith<_$_HiringJobOfferScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
