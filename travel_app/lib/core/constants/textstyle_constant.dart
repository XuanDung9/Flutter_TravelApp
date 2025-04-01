import 'package:flutter/widgets.dart';
import 'package:travel_app/core/constants/color_constant.dart';

class Textstyles {
  Textstyles(this.context);
  BuildContext? context;

  static const TextStyle defaultStyle = TextStyle(
    fontSize: 28,
    color: ColorPalette.text1Color,
    fontWeight: FontWeight.w400,
    height: 16 / 14,
  );
}

extension ExtendedTextstyle on TextStyle {
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle get italic {
    return copyWith(fontWeight: FontWeight.normal, fontStyle: FontStyle.italic);
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle get fontHeader {
    return copyWith(fontSize: 28, height: 22 / 20);
  }

  TextStyle get fontCaption {
    return copyWith(fontSize: 12, height: 12 / 10);
  }

  TextStyle get semibold {
    return copyWith(fontWeight: FontWeight.w600);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle get text1Color {
    return copyWith(color: ColorPalette.text1Color);
  }

  TextStyle get primaryTextColor {
    return copyWith(color: ColorPalette.primaryColor);
  }

  TextStyle get subtitleTextColor {
    return copyWith(color: ColorPalette.subTitleColor);
  }

  TextStyle get whileColor {
    return copyWith(color: ColorPalette.dividerColor);
  }

  TextStyle setColor(Color color) {
    return copyWith(color: color);
  }

  TextStyle setTextSize(double size) {
    return copyWith(fontSize: size);
  }
}
