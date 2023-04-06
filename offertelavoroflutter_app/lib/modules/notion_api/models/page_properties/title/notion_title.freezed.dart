// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notion_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotionTitle _$NotionTitleFromJson(Map<String, dynamic> json) {
  return _NotionTitle.fromJson(json);
}

/// @nodoc
mixin _$NotionTitle {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<NotionRichText> get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotionTitleCopyWith<NotionTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotionTitleCopyWith<$Res> {
  factory $NotionTitleCopyWith(
          NotionTitle value, $Res Function(NotionTitle) then) =
      _$NotionTitleCopyWithImpl<$Res, NotionTitle>;
  @useResult
  $Res call({String id, String type, List<NotionRichText> title});
}

/// @nodoc
class _$NotionTitleCopyWithImpl<$Res, $Val extends NotionTitle>
    implements $NotionTitleCopyWith<$Res> {
  _$NotionTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as List<NotionRichText>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotionTitleCopyWith<$Res>
    implements $NotionTitleCopyWith<$Res> {
  factory _$$_NotionTitleCopyWith(
          _$_NotionTitle value, $Res Function(_$_NotionTitle) then) =
      __$$_NotionTitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, List<NotionRichText> title});
}

/// @nodoc
class __$$_NotionTitleCopyWithImpl<$Res>
    extends _$NotionTitleCopyWithImpl<$Res, _$_NotionTitle>
    implements _$$_NotionTitleCopyWith<$Res> {
  __$$_NotionTitleCopyWithImpl(
      _$_NotionTitle _value, $Res Function(_$_NotionTitle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
  }) {
    return _then(_$_NotionTitle(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value._title
          : title // ignore: cast_nullable_to_non_nullable
              as List<NotionRichText>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotionTitle implements _NotionTitle {
  const _$_NotionTitle(
      {required this.id,
      required this.type,
      required final List<NotionRichText> title})
      : _title = title;

  factory _$_NotionTitle.fromJson(Map<String, dynamic> json) =>
      _$$_NotionTitleFromJson(json);

  @override
  final String id;
  @override
  final String type;
  final List<NotionRichText> _title;
  @override
  List<NotionRichText> get title {
    if (_title is EqualUnmodifiableListView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_title);
  }

  @override
  String toString() {
    return 'NotionTitle(id: $id, type: $type, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotionTitle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._title, _title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, const DeepCollectionEquality().hash(_title));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotionTitleCopyWith<_$_NotionTitle> get copyWith =>
      __$$_NotionTitleCopyWithImpl<_$_NotionTitle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotionTitleToJson(
      this,
    );
  }
}

abstract class _NotionTitle implements NotionTitle, NotionPageProperty {
  const factory _NotionTitle(
      {required final String id,
      required final String type,
      required final List<NotionRichText> title}) = _$_NotionTitle;

  factory _NotionTitle.fromJson(Map<String, dynamic> json) =
      _$_NotionTitle.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  List<NotionRichText> get title;
  @override
  @JsonKey(ignore: true)
  _$$_NotionTitleCopyWith<_$_NotionTitle> get copyWith =>
      throw _privateConstructorUsedError;
}
