import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies/modules/home/view/loading_view.dart';
import 'package:movies/modules/movie_detail/model/movie_details_page_model.dart';
import 'package:movies/modules/movie_detail/view/movie_details_view.dart';
import 'package:movies/modules/movie_detail/view_model/movie_details_view_model.dart';
import 'package:movies/widgets/base_widget.dart';
import 'package:movies/widgets/components/empty_screen.dart';

class MovieDetailsPage extends BaseWidget<MovieDetailsViewModel> {

  MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return viewModel.obx(
      (MovieDetailsPageModel? model) => MovieDetailsView(model: model!),
      onError: (error) => _goBack(text: error),
      onLoading: LoadingView(),
    );
  }

  Widget _goBack({String? text}){
    return EmptyScreen(
      title: text ?? 'Erro ao buscar filmes',
      nameButton: 'Voltar',
      onPress:  Get.back,
    );
  }

}
