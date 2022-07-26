import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:movies/modules/home/view_model/home_view_model.dart';
import 'package:movies/modules/home/widgets/movie_catalog.dart';
import '../../../widgets/base_page.dart';
import '../../../widgets/base_widget.dart';
import '../model/popular_movies/popular_movies_model.dart';


class HomeView extends BaseWidget<HomeViewModel> {

  HomeView({
    Key? key,
    required this.model
  }) : super(key: key);

  final PopularMoviesModel model;

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: 'Popular Movies',
        body: Obx(() => Container(
          margin: const EdgeInsets.only(top: 20),
          child: NotificationListener<ScrollNotification>(
            onNotification: (scroll){
              if(!viewModel.loading &&
                  scroll.metrics.pixels == scroll.metrics.maxScrollExtent){
                viewModel.getDataMorePage();
              }
              return true;
            },
            child: GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 3.3 / 5,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 30
              ),
              children: List.generate(model.results.length, (index){
                return MovieCatalog(model: model.results[index]);
              })..add(_loadMore()),
            ),
          ),
        ))
    );
  }

  Widget _loadMore(){
    if(viewModel.loading){
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        child: Center(
          child: SpinKitThreeBounce(
            color: colors.text,
            size: 20,
          ),
        ),
      );
    }
    return Container();
  }

}
