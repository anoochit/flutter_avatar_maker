import 'package:get/get.dart';

class AppController extends GetxController {
  // category
  RxInt categoryIndex = 0.obs;
  // skin
  RxInt skinIndex = 1.obs;
  // hair
  RxInt hairIndex = 6.obs;
  // eyebrow
  RxInt eyebrowIndex = 1.obs;
  // eye
  RxInt eyeIndex = 4.obs;
  // mouth
  RxInt mouthIndex = 12.obs;
  // cloth
  RxInt clothIndex = 2.obs;

  setCategoryIndex(int index) {
    categoryIndex.value = index;
    update();
  }

  setSkinIndex(int index) {
    skinIndex.value = index;
    update();
  }

  setHairIndex(int index) {
    hairIndex.value = index;
    update();
  }

  setEyebrowIndex(int index) {
    eyebrowIndex.value = index;
    update();
  }

  setEyeIndex(int index) {
    eyeIndex.value = index;
    update();
  }

  setMouthIndex(int index) {
    mouthIndex.value = index;
    update();
  }

  setClothIndex(int index) {
    clothIndex.value = index;
    update();
  }

  void updateOption({required String label, required int index}) {
    switch (label) {
      case "skin":
        setSkinIndex(index);
        break;
      case "hair":
        setHairIndex(index);
        break;
      case "eyebrow":
        setEyebrowIndex(index);
        break;
      case "eye":
        setEyeIndex(index);
        break;
      case "mouth":
        setMouthIndex(index);
        break;
      case "cloth":
        setClothIndex(index);
        break;
    }
  }
}
