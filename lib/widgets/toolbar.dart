import 'package:flutter/material.dart';

import '../controller/app_controller.dart';

class ToolBarWidget extends StatelessWidget {
  const ToolBarWidget({
    super.key,
    required this.controller,
  });

  final AppController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // reset
        IconButton(
          onPressed: () {
            controller.reset();
          },
          icon: const Icon(Icons.delete_outline),
        ),
        // refresh
        IconButton(
          onPressed: () {
            controller.randomAvatar();
          },
          icon: const Icon(Icons.refresh),
        ),
        // save
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.save_alt),
        )
      ],
    );
  }
}
