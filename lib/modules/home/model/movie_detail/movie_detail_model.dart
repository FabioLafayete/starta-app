import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_model.freezed.dart';
part 'movie_detail_model.g.dart';

@freezed
class MovieDetailModel with _$MovieDetailModel {
  const factory MovieDetailModel({
    required int id,
    required String title,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required double voteCount,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    @Default(false) bool adult,
    String? homepage
  }) = _MovieDetailModel;

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailModelFromJson(json);
}
