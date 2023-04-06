import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/select_option/notion_select_option.dart';

part 'select_option.freezed.dart';

@freezed
class SelectOption with _$SelectOption {

  const factory SelectOption({
    required String id,
    required String name,
    required Color? color,
  }) = _SelectOption;

  static SelectOption? fromNotion(NotionSelectOption? notionSelectOption) {
    if(notionSelectOption == null) return null;

    return SelectOption(
      id: notionSelectOption.id,
      name: notionSelectOption.name,
      color: Colors.red // TODO parse notion colors
    );
  }
}