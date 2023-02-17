import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/const.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // avatar image
          Stack(
            children: [
              // skin
              SvgPicture.asset("assets/layouts/skins/white.svg"),

              // hair
              SvgPicture.asset("assets/layouts/hair/hairbun.svg"),

              // eyebrow
              SvgPicture.asset("assets/layouts/eyebrows/default.svg"),

              // eye
              SvgPicture.asset("assets/layouts/eyes/cry.svg"),

              // mouth
              SvgPicture.asset("assets/layouts/mouths/sad.svg"),

              // cloth
              SvgPicture.asset("assets/layouts/clothes/hoodie.svg"),
            ],
          ),

          // category
          const CategoryMenu(),
        ],
      ),
    );
  }
}
