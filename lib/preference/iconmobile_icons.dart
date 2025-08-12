// Place fonts/IconMobile.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: IconMobile
//      fonts:
//       - asset: fonts/IconMobile.ttf
import 'package:flutter/widgets.dart';

class IconMobile {
  IconMobile._();

  static const String _fontFamily = 'IconMobile';

  static const IconData iconParkSolidLike = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData mdiCart = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData mageFilterFill = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData biSearch = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData biFilterRight = IconData(0xe900, fontFamily: _fontFamily);
}
