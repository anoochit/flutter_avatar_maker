import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionMenu extends StatelessWidget {
  const OptionMenu({
    super.key,
    required this.image,
    required this.onTap,
  });

  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: () => onTap(),
        child: SvgPicture.asset(
          image,
        ),
      ),
    );
  }
}
