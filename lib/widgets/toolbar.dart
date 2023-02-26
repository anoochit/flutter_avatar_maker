import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/app_controller.dart';

class ToolBarWidget extends StatelessWidget {
  const ToolBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: GetBuilder<AppController>(builder: (controller) {
        return GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            // reset
            IconButton(
              onPressed: () {
                controller.reset();
              },
              icon: const Icon(
                Icons.delete_outline,
              ),
            ),
            // refresh
            IconButton(
              onPressed: () {
                controller.randomAvatar();
              },
              icon: const Icon(
                Icons.refresh,
              ),
            ),
            // save to gallery
            IconButton(
              onPressed: () async {
                controller.saveAvatarImage();
              },
              icon: const Icon(
                Icons.download,
              ),
            ),
            // save and share
            IconButton(
              onPressed: () async {
                controller.shareAvatarImage();
              },
              icon: const Icon(
                Icons.share,
              ),
            )
          ],
        );
      }),
    );
  }
}
