// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiring_job_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HiringJobOffer _$$_HiringJobOfferFromJson(Map<String, dynamic> json) =>
    _$_HiringJobOffer(
      id: json['id'] as String,
      archived: json['archived'] as bool,
      url: json['url'] as String,
      properties: HiringJobOfferProperties.fromJson(
          json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HiringJobOfferToJson(_$_HiringJobOffer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'archived': instance.archived,
      'url': instance.url,
      'properties': instance.properties,
    };
