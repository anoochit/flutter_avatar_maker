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
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listCategory.length,
        itemBuilder: (context, index) {
          return OptionMenu(
            image: listCategory[index].image,
            height: 120,
            width: 120,
            onTap: () {
              controller.setCategoryIndex(listCategory[index].index);
            },
          );
        },
      ),
    );
  }
}
