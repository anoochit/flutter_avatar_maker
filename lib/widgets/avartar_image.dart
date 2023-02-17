import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const.dart';
import '../controller/app_controller.dart';
import 'avatar.dart';

class AvatarImageWidget extends StatelessWidget {
  const AvatarImageWidget({
    super.key,
    required this.width,
    required this.heigth,
  });

  final double width;
  final double heigth;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (controller) {
      return Stack(
        children: [
          // skin
          AvatarWidget(
            image: layoutSkins[controller.skinIndex.value],
            height: heigth,
            width: width,
          ),

          // tattoos
          AvatarWidget(
            image: layoutTattoos[controller.tattooIndex.value],
            height: heigth,
            width: width,
          ),

          // eyebrow
          AvatarWidget(
            image: layoutEyebrows[controller.eyebrowIndex.value],
            height: heigth,
            width: width,
          ),

          // eye
          AvatarWidget(
            image: layoutEye[controller.eyeIndex.value],
            height: heigth,
            width: width,
          ),

          // mouth
          AvatarWidget(
            image: layoutMouths[controller.mouthIndex.value],
            height: heigth,
            width: width,
          ),

          // cloth
          AvatarWidget(
            image: layoutClothes[controller.clothIndex.value],
            height: heigth,
            width: width,
          ),

          // accesories
          AvatarWidget(
            image: layoutAccesories[controller.accesoriesIndex.value],
            height: heigth,
            width: width,
          ),

          // hair
          AvatarWidget(
            image: layoutHair[controller.hairIndex.value],
            height: heigth,
            width: width,
          ),

          // facialhair
          AvatarWidget(
            image: layoutFacialhair[controller.facialhairIndex.value],
            height: heigth,
            width: width,
          ),

          // glasses
          AvatarWidget(
            image: layoutGlasses[controller.glassesIndex.value],
            height: heigth,
            width: width,
          ),
        ],
      );
    });
  }
}
