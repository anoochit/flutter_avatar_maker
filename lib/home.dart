import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar Maker"),
      ),
      body: Stack(
        children: [
          SvgPicture.asset("assets/layouts/skins/white.svg"),
          SvgPicture.asset("assets/layouts/eyes/none.svg"),
          SvgPicture.asset("assets/layouts/hair/hairbun.svg"),
          SvgPicture.asset("assets/layouts/mouths/sad.svg"),
          SvgPicture.asset("assets/layouts/clothes/hoodie.svg"),
        ],
      ),
    );
  }
}
