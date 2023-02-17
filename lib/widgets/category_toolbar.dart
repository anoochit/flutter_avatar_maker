import 'package:flutter/material.dart';

import '../const.dart';
import '../controller/app_controller.dart';
import 'category_menu.dart';
import 'option_menu.dart';

class CategoryToolbarWidget extends StatelessWidget {
  const CategoryToolbarWidget({
    super.key,
    required this.controller,
  });

  final AppController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: IndexedStack(
        index: controller.categoryIndex.value,
        children: const [
          // category
          CategoryMenuWidget(),
          // skin
          OptionMenuWidget(
            options: optionSkins,
            label: 'skin',
          ),
          // hair
          OptionMenuWidget(
            options: optionHair,
            label: 'hair',
          ),
          // eyebrow
          OptionMenuWidget(
            options: optionEyebrows,
            label: 'eyebrow',
          ),
          // eye
          OptionMenuWidget(
            options: optionEye,
            label: 'eye',
          ),
          // mouth
          OptionMenuWidget(
            options: optionMouths,
            label: 'mouth',
          ),
          // mouth
          OptionMenuWidget(
            options: optionFacialhair,
            label: 'facialhair',
          ),
          // cloth
          OptionMenuWidget(
            options: optionClothes,
            label: 'cloth',
          ),
          // glasses
          OptionMenuWidget(
            options: optionGlasses,
            label: 'glasses',
          ),
          // tattoos
          OptionMenuWidget(
            options: optionTattoos,
            label: 'tattoo',
          ),
          // accesories
          OptionMenuWidget(
            options: optionAccesories,
            label: 'accesories',
          ),
        ],
      ),
    );
  }
}
