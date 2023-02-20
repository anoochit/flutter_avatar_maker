import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/controller/app_controller.dart';
import 'package:get/get.dart';

import 'option.dart';

class OptionMenuWidget extends GetView<AppController> {
  const OptionMenuWidget({
    super.key,
    required this.options,
    required this.label,
    required this.width,
    required this.height,
  });

  final List<String> options;
  final String label;

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
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
                    height: height,
                    width: width,
                    child: InkWell(
                      onTap: () {
                        // update category to 0
                        controller.setCategoryIndex(0);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.reply_outlined,
                          size: 96,
                        ),
                      ),
                    ),
                  ),
                ),
                OptionMenu(
                  image: options[index],
                  height: height,
                  width: width,
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
            height: height,
            width: width,
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
