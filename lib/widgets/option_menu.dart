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
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: options.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Flex(
              direction: Axis.horizontal,
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      // update category to 0
                      controller.setCategoryIndex(0);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.reply_outlined,
                        size: 96,
                      ),
                    ),
                  ),
                ),
                OptionMenu(
                  image: options[index],
                  height: 120,
                  width: 120,
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
            height: 120,
            width: 120,
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
