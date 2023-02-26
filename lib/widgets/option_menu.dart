import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/controller/app_controller.dart';
import 'package:get/get.dart';

import 'option.dart';

class OptionMenuWidget extends GetView<AppController> {
  const OptionMenuWidget({
    super.key,
    required this.options,
    required this.label,
  });

  final List<String> options;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (context.isLandscape) ? 2 : 1,
      ),
      scrollDirection: (context.isLandscape) ? Axis.vertical : Axis.horizontal,
      itemCount: options.length,
      itemBuilder: (context, index) {
        return OptionMenu(
          image: options[index],
          onTap: () {
            // update
            controller.updateOption(label: label, index: index);
          },
        );
      },
    );
  }
}
