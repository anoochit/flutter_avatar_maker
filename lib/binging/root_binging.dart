import 'package:avatar_maker/controller/app_controller.dart';
import 'package:get/get.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppController());
  }
}
