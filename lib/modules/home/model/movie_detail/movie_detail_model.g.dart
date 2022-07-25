// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetailModel _$$_MovieDetailModelFromJson(Map<String, dynamic> json) =>
    _$_MovieDetailModel(
      id: json['id'] as int,
      title: json['title'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: (json['vote_count'] as num).toDouble(),
      posterPath: json['poster_path'] as String,
      backdropPath: json['backdrop_path'] as String?,
      releaseDate: json['release_date'] as String,
      adult: json['adult'] as bool? ?? false,
      homepage: json['homepage'] as String?,
    );

Map<String, dynamic> _$$_MovieDetailModelToJson(_$_MovieDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'release_date': instance.releaseDate,
      'adult': instance.adult,
      'homepage': instance.homepage,
    };
