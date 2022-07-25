import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:movies/modules/movie_detail/model/movie_details_page_model.dart';
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
      body: Stack(
        children: [
          SizedBox(
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
          ),
          _effectImage(),
          _backButton()
        ],
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
              stops: const [0.4, 0.99]
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
