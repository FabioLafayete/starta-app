// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PopularMoviesModel _$$_PopularMoviesModelFromJson(
        Map<String, dynamic> json) =>
    _$_PopularMoviesModel(
      page: json['page'] as int,
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PopularMoviesModelToJson(
        _$_PopularMoviesModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.results,
    };
