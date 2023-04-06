import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_list.freezed.dart';
part 'paginated_list.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginatedList<T> with _$PaginatedList<T> {

  const factory PaginatedList({
    required List<T> results,
    @JsonKey(name: 'next_cursor')
    required String? nextCursor,
    @JsonKey(name: 'has_more')
    required bool hasMore,
  }) = _PaginatedList;

  factory PaginatedList.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJsonT) => _$PaginatedListFromJson(json, fromJsonT);
}