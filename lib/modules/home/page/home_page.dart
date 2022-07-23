import 'package:get/get.dart';
import 'package:movies/components/base_page.dart';
import 'package:movies/modules/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import '../../../components/base_widget.dart';

class HomePage extends BaseWidget<HomeViewModel> {

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BasePage(
      body: controller.obx(
            (List<String>? state) => text(state!.length.toString()),
        onLoading: text('Loading'),
        onError: (error) => text(error ?? ''),
      ),
    );
  }
}
