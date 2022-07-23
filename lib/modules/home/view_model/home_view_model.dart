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

  final RxBool _loading = RxBool(false);

  bool get loading => _loading.value;

  setLoading(bool value) => _loading.value = value;

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

  Future getDataMorePage() async {
    try{
      setLoading(true);
      PopularMoviesModel data = await repositoryImpl.getPopularMovies(page: model!.page + 1);
      model = data.copyWith(
        results: [...model!.results, ...data.results]
      );
      change(model, status: RxStatus.success());
    }catch(error){
      log(error.toString());
    } finally {
      setLoading(false);
    }
  }


}