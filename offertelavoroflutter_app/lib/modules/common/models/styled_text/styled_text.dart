import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/helpers/notion_color.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/rich_text/notion_rich_text.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/rich_text/rich_text_annotations/notion_rich_text_annotations.dart';

part 'styled_text.freezed.dart';

@freezed
class StyledText with _$StyledText {

  const factory StyledText({
    required String text,
    required TextStyle style,
    required String? href,
  }) = _StyledText;

  factory StyledText.fromNotion(NotionRichText notionRichText) {
    return notionRichText.map<StyledText>(
      text: (value) => StyledText(
        text: value.text.content,
        style: getTextStyle(value.annotations),
        href: value.href
      ),
      mention: (value) => StyledText(
        text: value.plainText,
        style: getTextStyle(value.annotations),
        href: value.href
      ),
      equation: (value) => StyledText(
        text: value.plainText,
        style: getTextStyle(value.annotations),
        href: value.href
      ),
    );
  }

  static TextStyle getTextStyle(NotionRichTextAnnotations annotations) {
    return TextStyle(
      color: NotionColor.parseNotionColor(annotations.color),
      decoration: getTextDecoration(annotations),
      fontWeight: annotations.bold ? FontWeight.bold : null,
      fontStyle: annotations.italic ? FontStyle.italic : null
    );
  }

  static TextDecoration getTextDecoration(NotionRichTextAnnotations annotations) {
    if(annotations.strikethrough) return TextDecoration.lineThrough;
    if(annotations.underline) return TextDecoration.underline;

    return TextDecoration.none;
  }
}