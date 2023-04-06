import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/notion_api/models/paged_response/notion_paged_response.dart';

part 'paged_list.freezed.dart';

@freezed
class PagedList<T> with _$PagedList<T> {

  const factory PagedList({
    required List<T> results,
    required String? nextCursor,
    required bool hasMore,
  }) = _PagedList;

  factory PagedList.fromNotion(NotionPagedResponse notionPagedResponse, T Function(dynamic) objectMapper)  {
    return PagedList(
      hasMore: notionPagedResponse.hasMore,
      nextCursor: notionPagedResponse.nextCursor,
      results: notionPagedResponse.results.map(objectMapper).toList()
    );
  }
}