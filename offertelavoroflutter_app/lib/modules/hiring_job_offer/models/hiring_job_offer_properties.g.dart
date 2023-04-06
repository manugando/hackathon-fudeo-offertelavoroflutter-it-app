// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiring_job_offer_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HiringJobOfferProperties _$$_HiringJobOfferPropertiesFromJson(
        Map<String, dynamic> json) =>
    _$_HiringJobOfferProperties(
      jobPosted: NotionPagePropertyCreatedTime.fromJson(
          json['Job Posted'] as Map<String, dynamic>),
      name: NotionPagePropertyTitle.fromJson(
          json['Name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HiringJobOfferPropertiesToJson(
        _$_HiringJobOfferProperties instance) =>
    <String, dynamic>{
      'Job Posted': instance.jobPosted,
      'Name': instance.name,
    };
