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
    double scWidth = (context.width / 4);
    return SizedBox(
      height: scWidth,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: options.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Flex(
              direction: Axis.horizontal,
              children: [
                Card(
                  child: SizedBox(
                    height: scWidth,
                    width: scWidth,
                    child: InkWell(
                      onTap: () {
                        // update category to 0
                        controller.setCategoryIndex(0);
                      },
                      child: const Icon(
                        Icons.reply_outlined,
                        size: 48,
                      ),
                    ),
                  ),
                ),
                OptionMenu(
                  image: options[index],
                  height: scWidth,
                  width: scWidth,
                  onTap: () {
                    // update option
                    controller.updateOption(label: label, index: index);
                  },
                )
              ],
            );
          }
          return OptionMenu(
            image: options[index],
            height: scWidth,
            width: scWidth,
            onTap: () {
              // update
              controller.updateOption(label: label, index: index);
            },
          );
        },
      ),
    );
  }
}
