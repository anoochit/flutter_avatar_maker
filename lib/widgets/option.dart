import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionMenu extends StatelessWidget {
  const OptionMenu({
    super.key,
    required this.image,
    required this.height,
    required this.width,
  });

  final String image;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SvgPicture.asset(
        image,
        height: height,
        width: width,
      ),
    );
  }
}
