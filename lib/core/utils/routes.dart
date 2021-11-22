import 'package:flutter/material.dart';
import 'package:tech_tuesday/src/home/views/home_view.dart';

class Routes {
  static const String home = '/';

  static Map<String, Widget Function(Object? params)> map = {
    home: (Object? params) => HomeView(),
  };
}
