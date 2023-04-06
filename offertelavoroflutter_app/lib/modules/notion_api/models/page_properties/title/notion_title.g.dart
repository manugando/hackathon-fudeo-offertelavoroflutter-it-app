// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notion_title.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotionTitle _$$_NotionTitleFromJson(Map<String, dynamic> json) =>
    _$_NotionTitle(
      id: json['id'] as String,
      type: json['type'] as String,
      title: (json['title'] as List<dynamic>)
          .map((e) => NotionRichText.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NotionTitleToJson(_$_NotionTitle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
    };
