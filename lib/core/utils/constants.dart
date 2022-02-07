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

  static TextStyle get articleHeader => articleCardTitle.copyWith(
        fontSize: 30,
      );

  // #011623 => 0xff011623
  static Color get defaultDarkBlue => const Color(0xff011623);

  // #fdb913 => 0xfffdb913
  static Color get techTuesdayYellow => const Color(0xfffdb913);
}
