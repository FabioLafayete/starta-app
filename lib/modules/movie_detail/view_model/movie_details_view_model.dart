import 'dart:developer';

import 'package:get/get.dart';
import 'package:movies/modules/home/model/movie_detail/movie_detail_model.dart';
import 'package:movies/modules/home/model/popular_movies/popular_movies_model.dart';
import 'package:movies/modules/movie_detail/model/movie_details_page_model.dart';
import 'package:movies/modules/movie_detail/repository/impl/movie_details_repository_impl.dart';

class MovieDetailsViewModel extends GetxController with StateMixin<MovieDetailsPageModel>{

  MovieDetailsViewModel({
   required this.repositoryImpl
  }) : super(){
    checkIdInArguments();
  }

  final MovieDetailsRepositoryImpl repositoryImpl;

  PopularMoviesModel? moviesSimilarModel;
  MovieDetailModel? movieDetailModel;
  MovieDetailsPageModel? movieDetailsPageModel;

  final Rxn<int> _id = Rxn<int>();

  int? get id => _id.value;

  setId(int value) => _id.value = value;

  void checkIdInArguments(){
    try{
      if(Get.arguments != null) {
        setId(Get.arguments['id']);
        if(id != null){
          getData(id!);
          return;
        }
      }
      throw 'Falha ao buscar filme';
    }catch(error){
      log(error.toString());
      change(null, status: RxStatus.error(error.toString()));
    }
  }

  Future getData(int id) async {
    try{
      change(null, status: RxStatus.loading());
      movieDetailModel = await repositoryImpl.getMovieDetails(id);
      moviesSimilarModel = await repositoryImpl.getMoviesSimilar(id);
      movieDetailsPageModel = MovieDetailsPageModel(
          movieDetails: movieDetailModel!,
          moviesSimilar: moviesSimilarModel!
      );
      change(movieDetailsPageModel, status: RxStatus.success());
    }catch(error){
      log(error.toString());
      change(null, status: RxStatus.error('Falha ao carregar filme'));
    }
  }



}