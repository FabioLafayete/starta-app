import 'package:flutter/material.dart';
import 'package:movies/widgets/base_page.dart';
import 'package:movies/widgets/base_widget.dart';

class LoadingView extends BaseWidget {
  LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      showAppBar: false,
      padding: const EdgeInsets.all(20),
      backgroundColor: colors.background,
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}