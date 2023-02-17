import 'package:flutter/material.dart';

import 'widgets/avartar_image.dart';
import 'widgets/category_toolbar.dart';
import 'widgets/toolbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
