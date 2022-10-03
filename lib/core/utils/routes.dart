import 'package:flutter/material.dart';
import 'package:tech_tuesday/core/models/article_model.dart';
import 'package:tech_tuesday/src/article_view/views/article_view.dart';
import 'package:tech_tuesday/src/home/views/home_view.dart';

class Routes {
  static const String home = '/';
  static const String articleView = '/article';

  static Map<String, Widget Function(Object? params)> map = {
    home: (Object? params) => HomeView(),
    articleView: (Object? params) => ArticleView(article: params as Article),
  };
}
