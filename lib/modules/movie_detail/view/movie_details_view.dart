import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:movies/modules/movie_detail/model/movie_details_page/movie_details_page_model.dart';
import 'package:movies/modules/movie_detail/widgets/item_movie_widget.dart';
import 'package:movies/widgets/base_page.dart';
import 'package:movies/widgets/base_widget.dart';

class MovieDetailsView extends BaseWidget {
  MovieDetailsView({
    Key? key,
    required this.model
  }) : super(key: key);

  final MovieDetailsPageModel model;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      padding: EdgeInsets.zero,
      showAppBar: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height * 0.56,
              child: Stack(
                children: [
                  _image(),
                  _effectImage(),
                  _backButton()
                ],
              ),
            ),
            _information(),
            space(0.01),
            Column(
              children: List.generate(
                  model.moviesSimilar.results.length,
                      (index) => ItemMovieWidget(
                        model: model.moviesSimilar.results[index]
                      )
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _information(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: text(
                    model.movieDetails.title,
                    color: colors.text,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.start,
                    fontSize: 25
                ),
              ),
              IconButton(
                icon: const Icon(Icons.favorite),
                color: colors.text,
                iconSize: 25,
                onPressed: (){},
              )
            ],
          ),
          space(0.01),
          Row(
            children: [
              Icon(Icons.favorite, color: colors.text, size: 18),
              space(0.02, width: true),
              text('${model.movieDetails.voteCount} Likes'),
              space(0.05, width: true),
              Icon(Icons.local_movies_outlined, color: colors.text, size: 18),
              space(0.02, width: true),
              text('${model.movieDetails.popularity} view'),
            ],
          )
        ],
      ),
    );
  }

  Widget _image(){
    return SizedBox(
      height: height * 0.55,
      child: Image.network(
        model.movieDetails.getPosterFullHD(),
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
        alignment: Alignment.topCenter,
        width: width,
        loadingBuilder: (_,image, loadingProgress){
          if (loadingProgress == null) return image;
          return SizedBox(
            height: 300,
            child: Center(
              child: SpinKitThreeBounce(
                color: colors.text,
                size: 20,
              ),
            ),
          );
        },
        errorBuilder: (_,__,___){
          return Center(
            child: Icon(
              Icons.image_not_supported_outlined,
              size: 25,
              color: colors.text,
            ),
          );
        },
      ),
    );
  }

  Widget _effectImage(){
    return Container(
      height: height * 0.56,
      decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.transparent,
                colors.background,
              ],
              stops: const [0.4, 0.97]
          )
      ),
    );
  }

  Widget _backButton(){
    return Positioned(
      top: height * 0.05,
      left: width * 0.02,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1000),
          color: colors.background.withOpacity(0.7),
        ),
        child: GestureDetector(
          onTap: Get.back,
          child: Icon(
            Icons.arrow_back_ios_sharp,
            size: 20,
            color: colors.text,
          ),
        ),
      ),
    );
  }
}
