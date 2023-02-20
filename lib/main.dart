import 'package:flutter/material.dart';
import 'package:flutter_avatar_maker/binging/root_binging.dart';
import 'package:get/get.dart';

import 'pages/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      initialBinding: RootBinding(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        )
      ],
    );
  }
}
