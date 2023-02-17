import 'package:flutter/material.dart';

import '../const.dart';
import 'option.dart';

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          OptionMenu(
            image: optionSkins[1],
            height: 120,
            width: 120,
          ),
          OptionMenu(
            image: optionHair[1],
            height: 120,
            width: 120,
          ),
          OptionMenu(
            image: optionEyebrows[1],
            height: 120,
            width: 120,
          ),
          OptionMenu(
            image: optionEye[1],
            height: 120,
            width: 120,
          ),
          OptionMenu(
            image: optionMouths[1],
            height: 120,
            width: 120,
          ),
          OptionMenu(
            image: optionClothes[1],
            height: 120,
            width: 120,
          ),
        ],
      ),
    );
  }
}
