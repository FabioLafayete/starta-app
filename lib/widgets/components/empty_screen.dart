import 'package:flutter/material.dart';

import '../base_page.dart';
import '../base_widget.dart';
import 'custom_button.dart';

class EmptyScreen extends BaseWidget {

  EmptyScreen({
    Key? key,
    required this.onPress,
    required this.nameButton,
    this.title,
    this.description,
    this.loading
  }) : super(key: key);

  final Function() onPress;
  final String nameButton;
  final String? title;
  final String? description;
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      showAppBar: false,
      padding: const EdgeInsets.all(50),
      backgroundColor: colors.background,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            text(
                title ?? 'Erro inesperado',
                color: colors.text,
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),
            if(description != null)
              Column(
                children: [
                  space(0.02),
                  text(
                    description!,
                    color: colors.text,
                  ),
                ],
              ),
            space(0.04),
            CustomButton(
              title: nameButton,
              colorTitle: colors.background,
              colorButton: colors.primary,
              loading: loading ?? false,
              onPress: onPress
            ),
          ],
        ),
      ),
    );
  }
}
