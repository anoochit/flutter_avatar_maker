import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/app_controller.dart';

class ToolBarWidget extends StatelessWidget {
  const ToolBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // reset
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: IconButton(
              onPressed: () {
                controller.reset();
              },
              icon: const Icon(
                Icons.delete_outline,
                size: 48.0,
              ),
            ),
          ),
          // refresh
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: IconButton(
              onPressed: () {
                controller.randomAvatar();
              },
              icon: const Icon(
                Icons.refresh,
                size: 48.0,
              ),
            ),
          ),
          // save and share
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: IconButton(
              onPressed: () async {
                controller.shareAvatarImage();
              },
              icon: const Icon(
                Icons.share,
                size: 48.0,
              ),
            ),
          )
        ],
      );
    });
  }
}
