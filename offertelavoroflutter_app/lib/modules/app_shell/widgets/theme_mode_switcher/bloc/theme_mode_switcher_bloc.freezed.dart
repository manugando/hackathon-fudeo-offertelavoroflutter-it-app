// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_mode_switcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeModeSwitcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() themeModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? themeModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeModeToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeModeSwitcherEventCopyWith<$Res> {
  factory $ThemeModeSwitcherEventCopyWith(ThemeModeSwitcherEvent value,
          $Res Function(ThemeModeSwitcherEvent) then) =
      _$ThemeModeSwitcherEventCopyWithImpl<$Res, ThemeModeSwitcherEvent>;
}

/// @nodoc
class _$ThemeModeSwitcherEventCopyWithImpl<$Res,
        $Val extends ThemeModeSwitcherEvent>
    implements $ThemeModeSwitcherEventCopyWith<$Res> {
  _$ThemeModeSwitcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ThemeModeToggledCopyWith<$Res> {
  factory _$$_ThemeModeToggledCopyWith(
          _$_ThemeModeToggled value, $Res Function(_$_ThemeModeToggled) then) =
      __$$_ThemeModeToggledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ThemeModeToggledCopyWithImpl<$Res>
    extends _$ThemeModeSwitcherEventCopyWithImpl<$Res, _$_ThemeModeToggled>
    implements _$$_ThemeModeToggledCopyWith<$Res> {
  __$$_ThemeModeToggledCopyWithImpl(
      _$_ThemeModeToggled _value, $Res Function(_$_ThemeModeToggled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ThemeModeToggled implements _ThemeModeToggled {
  const _$_ThemeModeToggled();

  @override
  String toString() {
    return 'ThemeModeSwitcherEvent.themeModeToggled()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() themeModeToggled,
  }) {
    return themeModeToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? themeModeToggled,
  }) {
    return themeModeToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeModeToggled,
    required TResult orElse(),
  }) {
    if (themeModeToggled != null) {
      return themeModeToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeModeToggled value) themeModeToggled,
  }) {
    return themeModeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeModeToggled value)? themeModeToggled,
  }) {
    return themeModeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeModeToggled value)? themeModeToggled,
    required TResult orElse(),
  }) {
    if (themeModeToggled != null) {
      return themeModeToggled(this);
    }
    return orElse();
  }
}

abstract class _ThemeModeToggled implements ThemeModeSwitcherEvent {
  const factory _ThemeModeToggled() = _$_ThemeModeToggled;
}

/// @nodoc
mixin _$ThemeModeSwitcherState {
  bool get darkMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeModeSwitcherStateCopyWith<ThemeModeSwitcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeModeSwitcherStateCopyWith<$Res> {
  factory $ThemeModeSwitcherStateCopyWith(ThemeModeSwitcherState value,
          $Res Function(ThemeModeSwitcherState) then) =
      _$ThemeModeSwitcherStateCopyWithImpl<$Res, ThemeModeSwitcherState>;
  @useResult
  $Res call({bool darkMode});
}

/// @nodoc
class _$ThemeModeSwitcherStateCopyWithImpl<$Res,
        $Val extends ThemeModeSwitcherState>
    implements $ThemeModeSwitcherStateCopyWith<$Res> {
  _$ThemeModeSwitcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = null,
  }) {
    return _then(_value.copyWith(
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThemeModeSwitcherStateCopyWith<$Res>
    implements $ThemeModeSwitcherStateCopyWith<$Res> {
  factory _$$_ThemeModeSwitcherStateCopyWith(_$_ThemeModeSwitcherState value,
          $Res Function(_$_ThemeModeSwitcherState) then) =
      __$$_ThemeModeSwitcherStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool darkMode});
}

/// @nodoc
class __$$_ThemeModeSwitcherStateCopyWithImpl<$Res>
    extends _$ThemeModeSwitcherStateCopyWithImpl<$Res,
        _$_ThemeModeSwitcherState>
    implements _$$_ThemeModeSwitcherStateCopyWith<$Res> {
  __$$_ThemeModeSwitcherStateCopyWithImpl(_$_ThemeModeSwitcherState _value,
      $Res Function(_$_ThemeModeSwitcherState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = null,
  }) {
    return _then(_$_ThemeModeSwitcherState(
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ThemeModeSwitcherState implements _ThemeModeSwitcherState {
  const _$_ThemeModeSwitcherState({this.darkMode = false});

  @override
  @JsonKey()
  final bool darkMode;

  @override
  String toString() {
    return 'ThemeModeSwitcherState(darkMode: $darkMode)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeModeSwitcherStateCopyWith<_$_ThemeModeSwitcherState> get copyWith =>
      __$$_ThemeModeSwitcherStateCopyWithImpl<_$_ThemeModeSwitcherState>(
          this, _$identity);
}

abstract class _ThemeModeSwitcherState implements ThemeModeSwitcherState {
  const factory _ThemeModeSwitcherState({final bool darkMode}) =
      _$_ThemeModeSwitcherState;

  @override
  bool get darkMode;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeModeSwitcherStateCopyWith<_$_ThemeModeSwitcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
