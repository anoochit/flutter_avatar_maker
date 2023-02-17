import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/const.dart';
import 'package:flutter_avatar_maker/controller/app_controller.dart';
import 'package:flutter_avatar_maker/widgets/option_menu.dart';
import 'package:get/get.dart';

import 'widgets/avatar.dart';
import 'widgets/category_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scWidth = MediaQuery.of(context).size.width;
    return GetBuilder<AppController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Avatar Maker"),
            actions: [
              IconButton(
                onPressed: () {
                  controller.randomAvatar();
                },
                icon: const Icon(Icons.refresh),
              )
            ],
          ),
          body: Column(
            children: [
              // space
              const Spacer(),
              // avatar image
              Stack(
                children: [
                  // skin
                  AvatarWidget(
                    image: layoutSkins[controller.skinIndex.value],
                    height: scWidth,
                    width: scWidth,
                  ),

                  // hair
                  AvatarWidget(
                    image: layoutHair[controller.hairIndex.value],
                    height: scWidth,
                    width: scWidth,
                  ),

                  // eyebrow
                  AvatarWidget(
                    image: layoutEyebrows[controller.eyebrowIndex.value],
                    height: scWidth,
                    width: scWidth,
                  ),

                  // eye
                  AvatarWidget(
                    image: layoutEye[controller.eyeIndex.value],
                    height: scWidth,
                    width: scWidth,
                  ),

                  // mouth
                  AvatarWidget(
                    image: layoutMouths[controller.mouthIndex.value],
                    height: scWidth,
                    width: scWidth,
                  ),

                  // cloth
                  AvatarWidget(
                    image: layoutClothes[controller.clothIndex.value],
                    height: scWidth,
                    width: scWidth,
                  ),

                  // facialhair
                  AvatarWidget(
                    image: layoutFacialhair[controller.facialhairIndex.value],
                    height: scWidth,
                    width: scWidth,
                  ),
                ],
              ),
              // space
              const Spacer(),
              // category
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: IndexedStack(
                  index: controller.categoryIndex.value,
                  children: const [
                    // category
                    CategoryMenuWidget(),
                    // skin
                    OptionMenuWidget(options: optionSkins, label: 'skin'),
                    // hair
                    OptionMenuWidget(options: optionHair, label: 'hair'),
                    // eyebrow
                    OptionMenuWidget(options: optionEyebrows, label: 'eyebrow'),
                    // eye
                    OptionMenuWidget(options: optionEye, label: 'eye'),
                    // mouth
                    OptionMenuWidget(options: optionMouths, label: 'mouth'),
                    // mouth
                    OptionMenuWidget(
                        options: optionFacialhair, label: 'facialhair'),
                    // cloth
                    OptionMenuWidget(options: optionClothes, label: 'cloth'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
