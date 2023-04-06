// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_page_hiring_job_offer_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotionPageHiringJobOfferProperties
    _$$_NotionPageHiringJobOfferPropertiesFromJson(Map<String, dynamic> json) =>
        _$_NotionPageHiringJobOfferProperties(
          jobPosted: NotionPagePropertyCreatedTime.fromJson(
              json['Job Posted'] as Map<String, dynamic>),
          team: NotionPagePropertySelect.fromJson(
              json['Team'] as Map<String, dynamic>),
          contratto: NotionPagePropertySelect.fromJson(
              json['Contratto'] as Map<String, dynamic>),
          seniority: NotionPagePropertySelect.fromJson(
              json['Seniority'] as Map<String, dynamic>),
          ral: NotionPagePropertySelect.fromJson(
              json['RAL'] as Map<String, dynamic>),
          name: NotionPagePropertyTitle.fromJson(
              json['Name'] as Map<String, dynamic>),
          qualifica: NotionPagePropertyRichText.fromJson(
              json['Qualifica'] as Map<String, dynamic>),
          retribuzione: NotionPagePropertyRichText.fromJson(
              json['Retribuzione'] as Map<String, dynamic>),
          descrizioneOfferta: NotionPagePropertyRichText.fromJson(
              json['Descrizione offerta'] as Map<String, dynamic>),
          comeCandidarsi: NotionPagePropertyRichText.fromJson(
              json['Come candidarsi'] as Map<String, dynamic>),
          localita: NotionPagePropertyRichText.fromJson(
              json['Località'] as Map<String, dynamic>),
          nomeAzienda: NotionPagePropertyRichText.fromJson(
              json['Nome azienda'] as Map<String, dynamic>),
          statoDiPubblicazione: NotionPagePropertyRichText.fromJson(
              json['Stato di pubblicazione'] as Map<String, dynamic>),
          urlSitoWeb: NotionPagePropertyUrl.fromJson(
              json['URL sito web'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_NotionPageHiringJobOfferPropertiesToJson(
        _$_NotionPageHiringJobOfferProperties instance) =>
    <String, dynamic>{
      'Job Posted': instance.jobPosted,
      'Team': instance.team,
      'Contratto': instance.contratto,
      'Seniority': instance.seniority,
      'RAL': instance.ral,
      'Name': instance.name,
      'Qualifica': instance.qualifica,
      'Retribuzione': instance.retribuzione,
      'Descrizione offerta': instance.descrizioneOfferta,
      'Come candidarsi': instance.comeCandidarsi,
      'Località': instance.localita,
      'Nome azienda': instance.nomeAzienda,
      'Stato di pubblicazione': instance.statoDiPubblicazione,
      'URL sito web': instance.urlSitoWeb,
    };
