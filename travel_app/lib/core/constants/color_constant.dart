import 'dart:ui';

import 'package:flutter/widgets.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xffFFFFFF);
  static const Color secondColor = Color(0xff8F67E8);
  static const Color buttonColor = Color(0xff0373F3);
  static const Color dividerColor = Color(0xFFE5E7EB);
  static const Color text1Color = Color(0xff000000);
  static const Color subTitleColor = Color(0xFF838383);
  static const Color backgroundScaffoldColor = Color(0xFFF2F2F2);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [ColorPalette.secondColor, ColorPalette.primaryColor],
  );
}
