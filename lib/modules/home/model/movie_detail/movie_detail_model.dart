import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_model.freezed.dart';
part 'movie_detail_model.g.dart';

@freezed
class MovieDetailModel with _$MovieDetailModel {
  const MovieDetailModel._();

  const factory MovieDetailModel({
    required int id,
    required String title,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required double voteCount,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    @Default(false) bool adult,
    String? homepage
  }) = _MovieDetailModel;

  String getPosterHD() => 'https://image.tmdb.org/t/p/w500/$posterPath';
  String getPosterFullHD() => 'https://image.tmdb.org/t/p/w1280/$posterPath';

  String getImageHD() => 'https://image.tmdb.org/t/p/w500/$backdropPath';
  String getImageFullHD() => 'https://image.tmdb.org/t/p/w1280/$backdropPath';

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}
