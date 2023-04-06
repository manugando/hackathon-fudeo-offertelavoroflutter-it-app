// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hiring_job_offer_properties.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HiringJobOfferProperties _$HiringJobOfferPropertiesFromJson(
    Map<String, dynamic> json) {
  return _HiringJobOfferProperties.fromJson(json);
}

/// @nodoc
mixin _$HiringJobOfferProperties {
  @JsonKey(name: 'Job Posted')
  NotionPagePropertyCreatedTime get jobPosted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  NotionPagePropertyTitle get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HiringJobOfferPropertiesCopyWith<HiringJobOfferProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiringJobOfferPropertiesCopyWith<$Res> {
  factory $HiringJobOfferPropertiesCopyWith(HiringJobOfferProperties value,
          $Res Function(HiringJobOfferProperties) then) =
      _$HiringJobOfferPropertiesCopyWithImpl<$Res, HiringJobOfferProperties>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Job Posted') NotionPagePropertyCreatedTime jobPosted,
      @JsonKey(name: 'Name') NotionPagePropertyTitle name});

  $NotionPagePropertyCreatedTimeCopyWith<$Res> get jobPosted;
  $NotionPagePropertyTitleCopyWith<$Res> get name;
}

/// @nodoc
class _$HiringJobOfferPropertiesCopyWithImpl<$Res,
        $Val extends HiringJobOfferProperties>
    implements $HiringJobOfferPropertiesCopyWith<$Res> {
  _$HiringJobOfferPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobPosted = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      jobPosted: null == jobPosted
          ? _value.jobPosted
          : jobPosted // ignore: cast_nullable_to_non_nullable
              as NotionPagePropertyCreatedTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NotionPagePropertyTitle,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotionPagePropertyCreatedTimeCopyWith<$Res> get jobPosted {
    return $NotionPagePropertyCreatedTimeCopyWith<$Res>(_value.jobPosted,
        (value) {
      return _then(_value.copyWith(jobPosted: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NotionPagePropertyTitleCopyWith<$Res> get name {
    return $NotionPagePropertyTitleCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HiringJobOfferPropertiesCopyWith<$Res>
    implements $HiringJobOfferPropertiesCopyWith<$Res> {
  factory _$$_HiringJobOfferPropertiesCopyWith(
          _$_HiringJobOfferProperties value,
          $Res Function(_$_HiringJobOfferProperties) then) =
      __$$_HiringJobOfferPropertiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Job Posted') NotionPagePropertyCreatedTime jobPosted,
      @JsonKey(name: 'Name') NotionPagePropertyTitle name});

  @override
  $NotionPagePropertyCreatedTimeCopyWith<$Res> get jobPosted;
  @override
  $NotionPagePropertyTitleCopyWith<$Res> get name;
}

/// @nodoc
class __$$_HiringJobOfferPropertiesCopyWithImpl<$Res>
    extends _$HiringJobOfferPropertiesCopyWithImpl<$Res,
        _$_HiringJobOfferProperties>
    implements _$$_HiringJobOfferPropertiesCopyWith<$Res> {
  __$$_HiringJobOfferPropertiesCopyWithImpl(_$_HiringJobOfferProperties _value,
      $Res Function(_$_HiringJobOfferProperties) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobPosted = null,
    Object? name = null,
  }) {
    return _then(_$_HiringJobOfferProperties(
      jobPosted: null == jobPosted
          ? _value.jobPosted
          : jobPosted // ignore: cast_nullable_to_non_nullable
              as NotionPagePropertyCreatedTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NotionPagePropertyTitle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HiringJobOfferProperties implements _HiringJobOfferProperties {
  const _$_HiringJobOfferProperties(
      {@JsonKey(name: 'Job Posted') required this.jobPosted,
      @JsonKey(name: 'Name') required this.name});

  factory _$_HiringJobOfferProperties.fromJson(Map<String, dynamic> json) =>
      _$$_HiringJobOfferPropertiesFromJson(json);

  @override
  @JsonKey(name: 'Job Posted')
  final NotionPagePropertyCreatedTime jobPosted;
  @override
  @JsonKey(name: 'Name')
  final NotionPagePropertyTitle name;

  @override
  String toString() {
    return 'HiringJobOfferProperties(jobPosted: $jobPosted, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HiringJobOfferProperties &&
            (identical(other.jobPosted, jobPosted) ||
                other.jobPosted == jobPosted) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jobPosted, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HiringJobOfferPropertiesCopyWith<_$_HiringJobOfferProperties>
      get copyWith => __$$_HiringJobOfferPropertiesCopyWithImpl<
          _$_HiringJobOfferProperties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HiringJobOfferPropertiesToJson(
      this,
    );
  }
}

abstract class _HiringJobOfferProperties implements HiringJobOfferProperties {
  const factory _HiringJobOfferProperties(
          {@JsonKey(name: 'Job Posted')
              required final NotionPagePropertyCreatedTime jobPosted,
          @JsonKey(name: 'Name')
              required final NotionPagePropertyTitle name}) =
      _$_HiringJobOfferProperties;

  factory _HiringJobOfferProperties.fromJson(Map<String, dynamic> json) =
      _$_HiringJobOfferProperties.fromJson;

  @override
  @JsonKey(name: 'Job Posted')
  NotionPagePropertyCreatedTime get jobPosted;
  @override
  @JsonKey(name: 'Name')
  NotionPagePropertyTitle get name;
  @override
  @JsonKey(ignore: true)
  _$$_HiringJobOfferPropertiesCopyWith<_$_HiringJobOfferProperties>
      get copyWith => throw _privateConstructorUsedError;
}
