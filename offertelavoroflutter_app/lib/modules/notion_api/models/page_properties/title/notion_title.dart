import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/page_properties/notion_page_property.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/page_properties/rich_text/notion_rich_text.dart';

part 'notion_title.freezed.dart';
part 'notion_title.g.dart';

@freezed
class NotionTitle with _$NotionTitle {

  @Implements<NotionPageProperty>()
  const factory NotionTitle({
    required String id,
    required String type,
    required List<NotionRichText> title
  }) = _NotionTitle;

  factory NotionTitle.fromJson(Map<String, dynamic> json) => _$NotionTitleFromJson(json);
}