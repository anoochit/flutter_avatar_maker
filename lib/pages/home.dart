import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/controller/app_controller.dart';
import 'package:get/get.dart';

import '../widgets/avartar_image.dart';
import '../widgets/category_toolbar.dart';
import '../widgets/toolbar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  AppController controller = Get.find<AppController>();

  @override
  Widget build(BuildContext context) {
    final scWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar Maker"),
      ),
      body: Column(
        children: [
          // space
          const Spacer(),
          // avatar image
          AvatarImageWidget(width: scWidth, heigth: scWidth),
          // space
          const Spacer(),
          // toolbar
          ToolBarWidget(),
          // category toolbar
          const CategoryToolbarWidget(),
        ],
      ),
    );
  }
}
