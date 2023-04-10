import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/helpers/notion_color.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/select_option/notion_select_option.dart';

part 'select_option.freezed.dart';

@freezed
class SelectOption with _$SelectOption {

  const factory SelectOption({
    required String id,
    required String name,
    required Color? color,
  }) = _SelectOption;

  static SelectOption? fromNotionOrNull(NotionSelectOption? notionSelectOption) {
    if(notionSelectOption == null) return null;
    return fromNotion(notionSelectOption);
  }

  static SelectOption fromNotion(NotionSelectOption notionSelectOption) {
    return SelectOption(
      id: notionSelectOption.id,
      name: notionSelectOption.name,
      color: NotionColor.parseNotionColor(notionSelectOption.color),
    );
  }
}