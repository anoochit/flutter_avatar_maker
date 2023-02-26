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
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (context.isLandscape) ? 2 : 1,
      ),
      scrollDirection: (context.isLandscape) ? Axis.vertical : Axis.horizontal,
      itemCount: listCategory.length,
      itemBuilder: (context, index) {
        return OptionMenu(
          image: listCategory[index].image,
          onTap: () {
            controller.setCategoryIndex(listCategory[index].index);
          },
        );
      },
    );
  }
}
