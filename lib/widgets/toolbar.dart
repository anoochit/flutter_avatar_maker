import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/widgets/avartar_image.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../controller/app_controller.dart';

class ToolBarWidget extends StatelessWidget {
  ToolBarWidget({
    super.key,
  });

  final ScreenshotController _screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // reset
          IconButton(
            onPressed: () {
              controller.reset();
            },
            icon: const Icon(
              Icons.delete_outline,
              size: 32,
            ),
          ),
          // refresh
          IconButton(
            onPressed: () {
              controller.randomAvatar();
            },
            icon: const Icon(
              Icons.refresh,
              size: 32,
            ),
          ),
          // save and share
          IconButton(
            onPressed: () async {
              // save and share
              await _screenshotController
                  .captureFromWidget(
                      const AvatarImageWidget(
                        width: 400,
                        heigth: 400,
                      ),
                      delay: const Duration(milliseconds: 10))
                  .then((image) async {
                if (image != null) {
                  final directory = await getApplicationDocumentsDirectory();
                  final imagePath =
                      await File('${directory.path}/image.png').create();
                  await imagePath.writeAsBytes(image);

                  /// Share Plugin
                  await Share.shareXFiles([XFile(imagePath.path)]);
                }
              });
            },
            icon: const Icon(
              Icons.share,
              size: 32,
            ),
          )
        ],
      );
    });
  }
}
