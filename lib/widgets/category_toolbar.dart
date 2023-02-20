import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const.dart';
import '../controller/app_controller.dart';
import 'category_menu.dart';
import 'option_menu.dart';

class CategoryToolbarWidget extends StatelessWidget {
  const CategoryToolbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double scWidth = (context.width / 4);
    return GetBuilder<AppController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
        child: IndexedStack(
          index: controller.categoryIndex.value,
          children: [
            // category
            CategoryMenuWidget(),
            // skin
            OptionMenuWidget(
              options: optionSkins,
              label: 'skin',
              width: scWidth,
              height: scWidth,
            ),
            // hair
            OptionMenuWidget(
              options: optionHair,
              label: 'hair',
              width: scWidth,
              height: scWidth,
            ),
            // eyebrow
            OptionMenuWidget(
              options: optionEyebrows,
              label: 'eyebrow',
              width: scWidth,
              height: scWidth,
            ),
            // eye
            OptionMenuWidget(
              options: optionEye,
              label: 'eye',
              width: scWidth,
              height: scWidth,
            ),
            // mouth
            OptionMenuWidget(
              options: optionMouths,
              label: 'mouth',
              width: scWidth,
              height: scWidth,
            ),
            // mouth
            OptionMenuWidget(
              options: optionFacialhair,
              label: 'facialhair',
              width: scWidth,
              height: scWidth,
            ),
            // cloth
            OptionMenuWidget(
              options: optionClothes,
              label: 'cloth',
              width: scWidth,
              height: scWidth,
            ),
            // glasses
            OptionMenuWidget(
              options: optionGlasses,
              label: 'glasses',
              width: scWidth,
              height: scWidth,
            ),
            // tattoos
            OptionMenuWidget(
              options: optionTattoos,
              label: 'tattoo',
              width: scWidth,
              height: scWidth,
            ),
            // accesories
            OptionMenuWidget(
              options: optionAccesories,
              label: 'accesories',
              width: scWidth,
              height: scWidth,
            ),
          ],
        ),
      );
    });
  }
}
