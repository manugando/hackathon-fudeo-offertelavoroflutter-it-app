// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_db_hiring_job_offer_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotionDbHiringJobOfferProperties
    _$$_NotionDbHiringJobOfferPropertiesFromJson(Map<String, dynamic> json) =>
        _$_NotionDbHiringJobOfferProperties(
          team: NotionDbPropertySelect.fromJson(
              json['Team'] as Map<String, dynamic>),
          contratto: NotionDbPropertySelect.fromJson(
              json['Contratto'] as Map<String, dynamic>),
          seniority: NotionDbPropertySelect.fromJson(
              json['Seniority'] as Map<String, dynamic>),
          ral: NotionDbPropertySelect.fromJson(
              json['RAL'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_NotionDbHiringJobOfferPropertiesToJson(
        _$_NotionDbHiringJobOfferProperties instance) =>
    <String, dynamic>{
      'Team': instance.team,
      'Contratto': instance.contratto,
      'Seniority': instance.seniority,
      'RAL': instance.ral,
    };
