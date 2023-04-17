import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/dtos/paged_response/notion_paged_response.dart';

part 'paged_list.freezed.dart';

@freezed
class PagedList<T> with _$PagedList<T> {

  const factory PagedList({
    required List<T> results,
    required String? nextPageKey,
    required bool hasMore,
  }) = _PagedList;
}