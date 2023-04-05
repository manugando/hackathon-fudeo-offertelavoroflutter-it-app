// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hiring_job_offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HiringJobOffer _$HiringJobOfferFromJson(Map<String, dynamic> json) {
  return _HiringJobOffer.fromJson(json);
}

/// @nodoc
mixin _$HiringJobOffer {
  String get id => throw _privateConstructorUsedError;
  bool get archived => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HiringJobOfferCopyWith<HiringJobOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiringJobOfferCopyWith<$Res> {
  factory $HiringJobOfferCopyWith(
          HiringJobOffer value, $Res Function(HiringJobOffer) then) =
      _$HiringJobOfferCopyWithImpl<$Res, HiringJobOffer>;
  @useResult
  $Res call({String id, bool archived, String url});
}

/// @nodoc
class _$HiringJobOfferCopyWithImpl<$Res, $Val extends HiringJobOffer>
    implements $HiringJobOfferCopyWith<$Res> {
  _$HiringJobOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? archived = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HiringJobOfferCopyWith<$Res>
    implements $HiringJobOfferCopyWith<$Res> {
  factory _$$_HiringJobOfferCopyWith(
          _$_HiringJobOffer value, $Res Function(_$_HiringJobOffer) then) =
      __$$_HiringJobOfferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, bool archived, String url});
}

/// @nodoc
class __$$_HiringJobOfferCopyWithImpl<$Res>
    extends _$HiringJobOfferCopyWithImpl<$Res, _$_HiringJobOffer>
    implements _$$_HiringJobOfferCopyWith<$Res> {
  __$$_HiringJobOfferCopyWithImpl(
      _$_HiringJobOffer _value, $Res Function(_$_HiringJobOffer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? archived = null,
    Object? url = null,
  }) {
    return _then(_$_HiringJobOffer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HiringJobOffer implements _HiringJobOffer {
  const _$_HiringJobOffer(
      {required this.id, required this.archived, required this.url});

  factory _$_HiringJobOffer.fromJson(Map<String, dynamic> json) =>
      _$$_HiringJobOfferFromJson(json);

  @override
  final String id;
  @override
  final bool archived;
  @override
  final String url;

  @override
  String toString() {
    return 'HiringJobOffer(id: $id, archived: $archived, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HiringJobOffer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, archived, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HiringJobOfferCopyWith<_$_HiringJobOffer> get copyWith =>
      __$$_HiringJobOfferCopyWithImpl<_$_HiringJobOffer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HiringJobOfferToJson(
      this,
    );
  }
}

abstract class _HiringJobOffer implements HiringJobOffer {
  const factory _HiringJobOffer(
      {required final String id,
      required final bool archived,
      required final String url}) = _$_HiringJobOffer;

  factory _HiringJobOffer.fromJson(Map<String, dynamic> json) =
      _$_HiringJobOffer.fromJson;

  @override
  String get id;
  @override
  bool get archived;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_HiringJobOfferCopyWith<_$_HiringJobOffer> get copyWith =>
      throw _privateConstructorUsedError;
}
