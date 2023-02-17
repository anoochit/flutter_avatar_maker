// layouts
const layoutClothes = [
  "assets/layouts/clothes/none.svg",
  "assets/layouts/clothes/blazer.svg",
  "assets/layouts/clothes/hoodie.svg",
  "assets/layouts/clothes/overall.svg",
  "assets/layouts/clothes/sweater.svg",
  "assets/layouts/clothes/vneck.svg",
];

const layoutEyebrows = [
  "assets/layouts/eyebrows/none.svg",
  "assets/layouts/eyebrows/default1.svg",
  "assets/layouts/eyebrows/default2.svg",
  "assets/layouts/eyebrows/angry.svg",
  "assets/layouts/eyebrows/angry2.svg",
  "assets/layouts/eyebrows/raised.svg",
  "assets/layouts/eyebrows/sad.svg",
  "assets/layouts/eyebrows/sad2.svg",
  "assets/layouts/eyebrows/unibrow.svg",
  "assets/layouts/eyebrows/updown.svg",
  "assets/layouts/eyebrows/updown2.svg"
];

const layoutEye = [
  "assets/layouts/eyes/none.svg",
  "assets/layouts/eyes/default.svg",
  "assets/layouts/eyes/close.svg",
  "assets/layouts/eyes/cry.svg",
  "assets/layouts/eyes/dizzy.svg",
  "assets/layouts/eyes/eyeroll.svg",
  "assets/layouts/eyes/happy.svg",
  "assets/layouts/eyes/hearts.svg",
  "assets/layouts/eyes/side.svg",
  "assets/layouts/eyes/squint.svg",
  "assets/layouts/eyes/surprised.svg",
  "assets/layouts/eyes/wink.svg",
  "assets/layouts/eyes/winkwacky.svg"
];

const layoutHair = [
  "assets/layouts/hair/none.svg",
  "assets/layouts/hair/hairbun.svg",
  "assets/layouts/hair/longhair.svg",
  "assets/layouts/hair/longhairbob.svg",
  "assets/layouts/hair/longhaircurly.svg",
  "assets/layouts/hair/longhaircurvy.svg",
  "assets/layouts/hair/longhairdread.svg",
  "assets/layouts/hair/longhairstraight.svg",
  "assets/layouts/hair/longhairstraight2.svg",
  "assets/layouts/hair/miawallace.svg",
  "assets/layouts/hair/nottoolong.svg",
  "assets/layouts/hair/shorthaircurly.svg",
  "assets/layouts/hair/shorthairdreads.svg"
];

const layoutMouths = [
  "assets/layouts/mouths/none.svg",
  "assets/layouts/mouths/concerned.svg",
  "assets/layouts/mouths/default.svg",
  "assets/layouts/mouths/disbelief.svg",
  "assets/layouts/mouths/eating.svg",
  "assets/layouts/mouths/grimace.svg",
  "assets/layouts/mouths/sad.svg",
  "assets/layouts/mouths/scream.svg",
  "assets/layouts/mouths/serious.svg",
  "assets/layouts/mouths/smile.svg",
  "assets/layouts/mouths/tongue.svg",
  "assets/layouts/mouths/twinkle.svg",
  "assets/layouts/mouths/vomit.svg",
];

const layoutSkins = [
  "assets/layouts/skins/black.svg",
  "assets/layouts/skins/white.svg",
];

// options
const optionClothes = [
  "assets/options/clothes/none.svg",
  "assets/options/clothes/blazer.svg",
  "assets/options/clothes/hoodie.svg",
  "assets/options/clothes/overall.svg",
  "assets/options/clothes/sweater.svg",
  "assets/options/clothes/vneck.svg",
];

const optionEyebrows = [
  "assets/options/eyebrows/none.svg",
  "assets/options/eyebrows/default1.svg",
  "assets/options/eyebrows/default2.svg",
  "assets/options/eyebrows/angry.svg",
  "assets/options/eyebrows/angry2.svg",
  "assets/options/eyebrows/raised.svg",
  "assets/options/eyebrows/sad.svg",
  "assets/options/eyebrows/sad2.svg",
  "assets/options/eyebrows/unibrow.svg",
  "assets/options/eyebrows/updown.svg",
  "assets/options/eyebrows/updown2.svg"
];

const optionEye = [
  "assets/options/eyes/none.svg",
  "assets/options/eyes/default.svg",
  "assets/options/eyes/close.svg",
  "assets/options/eyes/cry.svg",
  "assets/options/eyes/dizzy.svg",
  "assets/options/eyes/eyeroll.svg",
  "assets/options/eyes/happy.svg",
  "assets/options/eyes/hearts.svg",
  "assets/options/eyes/side.svg",
  "assets/options/eyes/squint.svg",
  "assets/options/eyes/surprised.svg",
  "assets/options/eyes/wink.svg",
  "assets/options/eyes/winkwacky.svg"
];

const optionHair = [
  "assets/options/hair/none.svg",
  "assets/options/hair/hairbun.svg",
  "assets/options/hair/longhair.svg",
  "assets/options/hair/longhairbob.svg",
  "assets/options/hair/longhaircurly.svg",
  "assets/options/hair/longhaircurvy.svg",
  "assets/options/hair/longhairdread.svg",
  "assets/options/hair/longhairstraight.svg",
  "assets/options/hair/longhairstraight2.svg",
  "assets/options/hair/miawallace.svg",
  "assets/options/hair/nottoolong.svg",
  "assets/options/hair/shorthaircurly.svg",
  "assets/options/hair/shorthairdreads.svg"
];

const optionMouths = [
  "assets/options/mouths/none.svg",
  "assets/options/mouths/concerned.svg",
  "assets/options/mouths/default.svg",
  "assets/options/mouths/disbelief.svg",
  "assets/options/mouths/eating.svg",
  "assets/options/mouths/grimace.svg",
  "assets/options/mouths/sad.svg",
  "assets/options/mouths/scream.svg",
  "assets/options/mouths/serious.svg",
  "assets/options/mouths/smile.svg",
  "assets/options/mouths/tongue.svg",
  "assets/options/mouths/twinkle.svg",
  "assets/options/mouths/vomit.svg",
];

const optionSkins = [
  "assets/options/skins/black.svg",
  "assets/options/skins/white.svg",
];

// category menu
class CategoryMenu {
  String image;
  int index;
  CategoryMenu({
    required this.image,
    required this.index,
  });
}

final listCategory = [
  CategoryMenu(image: optionSkins[1], index: 1),
  CategoryMenu(image: optionHair[1], index: 2),
  CategoryMenu(image: optionEyebrows[1], index: 3),
  CategoryMenu(image: optionEye[1], index: 4),
  CategoryMenu(image: optionMouths[1], index: 5),
  CategoryMenu(image: optionClothes[1], index: 6),
];
