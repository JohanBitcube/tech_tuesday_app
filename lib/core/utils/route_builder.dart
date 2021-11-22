import 'package:flutter/material.dart';
import 'package:tech_tuesday/core/utils/routes.dart';

class RouteBuilder {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Routes.map[settings.name]!(settings.arguments),
    );
  }
}
