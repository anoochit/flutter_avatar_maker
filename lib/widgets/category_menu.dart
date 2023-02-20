import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/controller/app_controller.dart';
import 'package:get/get.dart';

import '../const.dart';
import 'option.dart';

class CategoryMenuWidget extends GetView<AppController> {
  const CategoryMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double scWidth = (context.width / 4);
    return SizedBox(
      height: scWidth,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listCategory.length,
        itemBuilder: (context, index) {
          return OptionMenu(
            image: listCategory[index].image,
            height: scWidth,
            width: scWidth,
            onTap: () {
              controller.setCategoryIndex(listCategory[index].index);
            },
          );
        },
      ),
    );
  }
}
