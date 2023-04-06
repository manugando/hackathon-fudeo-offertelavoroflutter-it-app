import 'package:freezed_annotation/freezed_annotation.dart';

part 'notion_rich_text_content_text.freezed.dart';
part 'notion_rich_text_content_text.g.dart';

@freezed
class NotionRichTextContentText with _$NotionRichTextContentText {

  const factory NotionRichTextContentText({
    required String content,
    required dynamic link // TODO parse and handle the link object
  }) = _NotionRichTextContentText;

  factory NotionRichTextContentText.fromJson(Map<String, dynamic> json) => _$NotionRichTextContentTextFromJson(json);
}