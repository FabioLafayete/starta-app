import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies/modules/home/model/movie_detail/movie_detail_model.dart';
import 'package:movies/modules/home/model/popular_movies/popular_movies_model.dart';

part 'movie_details_page_model.freezed.dart';

@freezed
class MovieDetailsPageModel with _$MovieDetailsPageModel {

  const factory MovieDetailsPageModel({
    required PopularMoviesModel moviesSimilar,
    required MovieDetailModel movieDetails,
  }) = _MovieDetailsPageModel;

}
