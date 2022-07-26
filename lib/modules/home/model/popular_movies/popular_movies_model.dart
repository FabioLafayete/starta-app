import 'package:freezed_annotation/freezed_annotation.dart';
import '../movie_detail/movie_detail_model.dart';

part 'popular_movies_model.freezed.dart';
part 'popular_movies_model.g.dart';

@freezed
class PopularMoviesModel with _$PopularMoviesModel {
  const factory PopularMoviesModel({
    required int page,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
    required List<MovieDetailModel> results
  }) = _PopularMoviesModel;

  factory PopularMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesModelFromJson(json);
}
