import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/controller/app_controller.dart';
import 'package:get/get.dart';

import '../widgets/avartar_image.dart';
import '../widgets/category_toolbar.dart';
import '../widgets/toolbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool canPop = false;

  @override
  Widget build(BuildContext context) {
    final scWidth = MediaQuery.of(context).size.width;
    return GetBuilder<AppController>(
      builder: (controller) {
        return WillPopScope(
          onWillPop: () async {
            if (controller.categoryIndex.value == 0) {
              canPop = true;
            } else {
              canPop = false;
              controller.setCategoryIndex(0);
            }
            return canPop;
          },
          child: Scaffold(
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
                const ToolBarWidget(),
                // category toolbar
                const CategoryToolbarWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
