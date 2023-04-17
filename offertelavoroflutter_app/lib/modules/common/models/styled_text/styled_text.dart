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
}