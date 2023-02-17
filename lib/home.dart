import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/const.dart';

import 'widgets/avatar.dart';
import 'widgets/category_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
              ),

              // hair
              AvatarWidget(
                image: layoutHair[1],
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
              ),

              // eyebrow
              AvatarWidget(
                image: layoutEyebrows[1],
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
              ),

              // eye
              AvatarWidget(
                image: layoutEye[1],
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
              ),

              // mouth
              AvatarWidget(
                image: layoutMouths[1],
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
              ),

              // cloth
              AvatarWidget(
                image: layoutClothes[1],
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
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
