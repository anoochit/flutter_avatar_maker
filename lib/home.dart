import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/const.dart';

import 'widgets/avatar.dart';
import 'widgets/category_menu.dart';

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
          Stack(
            children: [
              // skin
              AvatarWidget(
                image: layoutSkins[1],
                height: scWidth,
                width: scWidth,
              ),

              // hair
              AvatarWidget(
                image: layoutHair[6],
                height: scWidth,
                width: scWidth,
              ),

              // eyebrow
              AvatarWidget(
                image: layoutEyebrows[1],
                height: scWidth,
                width: scWidth,
              ),

              // eye
              AvatarWidget(
                image: layoutEye[4],
                height: scWidth,
                width: scWidth,
              ),

              // mouth
              AvatarWidget(
                image: layoutMouths[12],
                height: scWidth,
                width: scWidth,
              ),

              // cloth
              AvatarWidget(
                image: layoutClothes[2],
                height: scWidth,
                width: scWidth,
              ),
            ],
          ),
          // space
          const Spacer(),
          // category
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: CategoryMenu(),
          ),
        ],
      ),
    );
  }
}
