// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rich_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RichText {
  String get text => throw _privateConstructorUsedError;
  TextStyle get style => throw _privateConstructorUsedError;
  String? get href => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RichTextCopyWith<RichText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RichTextCopyWith<$Res> {
  factory $RichTextCopyWith(RichText value, $Res Function(RichText) then) =
      _$RichTextCopyWithImpl<$Res, RichText>;
  @useResult
  $Res call({String text, TextStyle style, String? href});
}

/// @nodoc
class _$RichTextCopyWithImpl<$Res, $Val extends RichText>
    implements $RichTextCopyWith<$Res> {
  _$RichTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? style = null,
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RichTextCopyWith<$Res> implements $RichTextCopyWith<$Res> {
  factory _$$_RichTextCopyWith(
          _$_RichText value, $Res Function(_$_RichText) then) =
      __$$_RichTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, TextStyle style, String? href});
}

/// @nodoc
class __$$_RichTextCopyWithImpl<$Res>
    extends _$RichTextCopyWithImpl<$Res, _$_RichText>
    implements _$$_RichTextCopyWith<$Res> {
  __$$_RichTextCopyWithImpl(
      _$_RichText _value, $Res Function(_$_RichText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? style = null,
    Object? href = freezed,
  }) {
    return _then(_$_RichText(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RichText implements _RichText {
  const _$_RichText(
      {required this.text, required this.style, required this.href});

  @override
  final String text;
  @override
  final TextStyle style;
  @override
  final String? href;

  @override
  String toString() {
    return 'RichText(text: $text, style: $style, href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RichText &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.href, href) || other.href == href));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, style, href);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RichTextCopyWith<_$_RichText> get copyWith =>
      __$$_RichTextCopyWithImpl<_$_RichText>(this, _$identity);
}

abstract class _RichText implements RichText {
  const factory _RichText(
      {required final String text,
      required final TextStyle style,
      required final String? href}) = _$_RichText;

  @override
  String get text;
  @override
  TextStyle get style;
  @override
  String? get href;
  @override
  @JsonKey(ignore: true)
  _$$_RichTextCopyWith<_$_RichText> get copyWith =>
      throw _privateConstructorUsedError;
}
