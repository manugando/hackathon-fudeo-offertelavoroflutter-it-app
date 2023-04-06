// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedList<T> _$$_PaginatedListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_PaginatedList<T>(
      results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
      nextCursor: json['next_cursor'] as String?,
      hasMore: json['has_more'] as bool,
    );

Map<String, dynamic> _$$_PaginatedListToJson<T>(
  _$_PaginatedList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'results': instance.results.map(toJsonT).toList(),
      'next_cursor': instance.nextCursor,
      'has_more': instance.hasMore,
    };
