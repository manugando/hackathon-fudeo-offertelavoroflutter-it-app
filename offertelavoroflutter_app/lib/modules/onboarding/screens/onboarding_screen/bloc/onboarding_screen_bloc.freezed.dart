// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextStepRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextStepRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextStepRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NextStepRequested value) nextStepRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NextStepRequested value)? nextStepRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NextStepRequested value)? nextStepRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingScreenEventCopyWith<$Res> {
  factory $OnboardingScreenEventCopyWith(OnboardingScreenEvent value,
          $Res Function(OnboardingScreenEvent) then) =
      _$OnboardingScreenEventCopyWithImpl<$Res, OnboardingScreenEvent>;
}

/// @nodoc
class _$OnboardingScreenEventCopyWithImpl<$Res,
        $Val extends OnboardingScreenEvent>
    implements $OnboardingScreenEventCopyWith<$Res> {
  _$OnboardingScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NextStepRequestedCopyWith<$Res> {
  factory _$$_NextStepRequestedCopyWith(_$_NextStepRequested value,
          $Res Function(_$_NextStepRequested) then) =
      __$$_NextStepRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextStepRequestedCopyWithImpl<$Res>
    extends _$OnboardingScreenEventCopyWithImpl<$Res, _$_NextStepRequested>
    implements _$$_NextStepRequestedCopyWith<$Res> {
  __$$_NextStepRequestedCopyWithImpl(
      _$_NextStepRequested _value, $Res Function(_$_NextStepRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextStepRequested implements _NextStepRequested {
  const _$_NextStepRequested();

  @override
  String toString() {
    return 'OnboardingScreenEvent.nextStepRequested()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextStepRequested,
  }) {
    return nextStepRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextStepRequested,
  }) {
    return nextStepRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextStepRequested,
    required TResult orElse(),
  }) {
    if (nextStepRequested != null) {
      return nextStepRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NextStepRequested value) nextStepRequested,
  }) {
    return nextStepRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NextStepRequested value)? nextStepRequested,
  }) {
    return nextStepRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NextStepRequested value)? nextStepRequested,
    required TResult orElse(),
  }) {
    if (nextStepRequested != null) {
      return nextStepRequested(this);
    }
    return orElse();
  }
}

abstract class _NextStepRequested implements OnboardingScreenEvent {
  const factory _NextStepRequested() = _$_NextStepRequested;
}

/// @nodoc
mixin _$OnboardingScreenState {
  int get activeStepIndex => throw _privateConstructorUsedError;
  bool get hasMoreSteps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingScreenStateCopyWith<OnboardingScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingScreenStateCopyWith<$Res> {
  factory $OnboardingScreenStateCopyWith(OnboardingScreenState value,
          $Res Function(OnboardingScreenState) then) =
      _$OnboardingScreenStateCopyWithImpl<$Res, OnboardingScreenState>;
  @useResult
  $Res call({int activeStepIndex, bool hasMoreSteps});
}

/// @nodoc
class _$OnboardingScreenStateCopyWithImpl<$Res,
        $Val extends OnboardingScreenState>
    implements $OnboardingScreenStateCopyWith<$Res> {
  _$OnboardingScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeStepIndex = null,
    Object? hasMoreSteps = null,
  }) {
    return _then(_value.copyWith(
      activeStepIndex: null == activeStepIndex
          ? _value.activeStepIndex
          : activeStepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      hasMoreSteps: null == hasMoreSteps
          ? _value.hasMoreSteps
          : hasMoreSteps // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingScreenStateCopyWith<$Res>
    implements $OnboardingScreenStateCopyWith<$Res> {
  factory _$$_OnboardingScreenStateCopyWith(_$_OnboardingScreenState value,
          $Res Function(_$_OnboardingScreenState) then) =
      __$$_OnboardingScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int activeStepIndex, bool hasMoreSteps});
}

/// @nodoc
class __$$_OnboardingScreenStateCopyWithImpl<$Res>
    extends _$OnboardingScreenStateCopyWithImpl<$Res, _$_OnboardingScreenState>
    implements _$$_OnboardingScreenStateCopyWith<$Res> {
  __$$_OnboardingScreenStateCopyWithImpl(_$_OnboardingScreenState _value,
      $Res Function(_$_OnboardingScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeStepIndex = null,
    Object? hasMoreSteps = null,
  }) {
    return _then(_$_OnboardingScreenState(
      activeStepIndex: null == activeStepIndex
          ? _value.activeStepIndex
          : activeStepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      hasMoreSteps: null == hasMoreSteps
          ? _value.hasMoreSteps
          : hasMoreSteps // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OnboardingScreenState implements _OnboardingScreenState {
  const _$_OnboardingScreenState(
      {this.activeStepIndex = 0, this.hasMoreSteps = true});

  @override
  @JsonKey()
  final int activeStepIndex;
  @override
  @JsonKey()
  final bool hasMoreSteps;

  @override
  String toString() {
    return 'OnboardingScreenState(activeStepIndex: $activeStepIndex, hasMoreSteps: $hasMoreSteps)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingScreenStateCopyWith<_$_OnboardingScreenState> get copyWith =>
      __$$_OnboardingScreenStateCopyWithImpl<_$_OnboardingScreenState>(
          this, _$identity);
}

abstract class _OnboardingScreenState implements OnboardingScreenState {
  const factory _OnboardingScreenState(
      {final int activeStepIndex,
      final bool hasMoreSteps}) = _$_OnboardingScreenState;

  @override
  int get activeStepIndex;
  @override
  bool get hasMoreSteps;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingScreenStateCopyWith<_$_OnboardingScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
