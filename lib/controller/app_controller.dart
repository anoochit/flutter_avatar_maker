import 'dart:math';

import 'package:flutter_avatar_maker/const.dart';
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
  // facialhair
  RxInt facialhairIndex = 1.obs;
  // cloth
  RxInt clothIndex = 2.obs;
  // glasses
  RxInt glassesIndex = 0.obs;
  // tattoos
  RxInt tattooIndex = 0.obs;
  // accesories
  RxInt accesoriesIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    randomAvatar();
  }

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

  setFacialhairIndex(int index) {
    facialhairIndex.value = index;
    update();
  }

  setClothIndex(int index) {
    clothIndex.value = index;
    update();
  }

  setGlassesIndex(int index) {
    glassesIndex.value = index;
    update();
  }

  setTattooIndex(int index) {
    tattooIndex.value = index;
    update();
  }

  setAccesoriesIndex(int index) {
    accesoriesIndex.value = index;
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
      case "facialhair":
        setFacialhairIndex(index);
        break;
      case "cloth":
        setClothIndex(index);
        break;
      case "glasses":
        setGlassesIndex(index);
        break;
      case "tattoo":
        setTattooIndex(index);
        break;
      case "accesories":
        setAccesoriesIndex(index);
        break;
    }
  }

  void randomAvatar() {
    int clothIndex = Random().nextInt(layoutClothes.length);
    if (clothIndex == 0) clothIndex++;
    this.clothIndex.value = clothIndex;

    int mouthIndex = Random().nextInt(layoutMouths.length);
    if (mouthIndex == 0) mouthIndex++;
    this.mouthIndex.value = mouthIndex;

    int eyeIndex = Random().nextInt(layoutEye.length);
    if (eyeIndex == 0) eyeIndex++;
    this.eyeIndex.value = eyeIndex;

    int eyebrowIndex = Random().nextInt(layoutEyebrows.length);
    if (eyebrowIndex == 0) eyebrowIndex++;
    this.eyebrowIndex.value = eyebrowIndex;

    final hairIndex = Random().nextInt(layoutHair.length);
    this.hairIndex.value = hairIndex;

    final facialhairIndex = Random().nextInt(layoutFacialhair.length);
    this.facialhairIndex.value = facialhairIndex;

    final skinIndex = Random().nextInt(layoutSkins.length);
    this.skinIndex.value = skinIndex;

    final glassesIndex = Random().nextInt(layoutGlasses.length);
    this.glassesIndex.value = glassesIndex;

    final tattooIndex = Random().nextInt(layoutTattoos.length);
    this.tattooIndex.value = tattooIndex;

    final accesoriesIndex = Random().nextInt(layoutAccesories.length);
    this.accesoriesIndex.value = accesoriesIndex;

    update();
  }

  void reset() {
    // skin
    skinIndex = 1.obs;
    // hair
    hairIndex = 0.obs;
    // eyebrow
    eyebrowIndex = 0.obs;
    // eye
    eyeIndex = 0.obs;
    // mouth
    mouthIndex = 0.obs;
    // facialhair
    facialhairIndex = 0.obs;
    // cloth
    clothIndex = 0.obs;
    // glasses
    glassesIndex = 0.obs;
    // tattoos
    tattooIndex = 0.obs;
    // accesories
    accesoriesIndex = 0.obs;
    update();
  }
}
