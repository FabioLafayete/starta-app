import 'dart:developer';

import 'package:get/get.dart';
import 'package:movies/modules/home/model/popular_movies/popular_movies_model.dart';
import 'package:movies/modules/home/repository/impl/home_repository_impl.dart';

class HomeViewModel extends GetxController with StateMixin<PopularMoviesModel>{

  HomeViewModel({
    this.model,
    required this.repositoryImpl
  }) : super() {
    getData();
  }

  PopularMoviesModel? model;
  final HomeRepositoryImpl repositoryImpl;

  Future getData() async {
    try{
      change(null, status: RxStatus.loading());
      model = await repositoryImpl.getPopularMovies();
      change(model, status: RxStatus.success());
    }catch(error){
      log(error.toString());
      change(null, status: RxStatus.error('Falha ao carregar filmes'));
    }
  }


}