import 'package:flutter/material.dart';

class Constants {
  static TextStyle get articleCardTitle {
    return const TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get articleCardDate => const TextStyle(
        fontWeight: FontWeight.bold,
      );

  // #011623 => 0xff011623
  static Color get defaultDarkBlue => const Color(0xff011623);
}
