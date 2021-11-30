import 'package:flutter/material.dart';
import 'package:tech_tuesday/core/models/article_model.dart';

class ArticleView extends StatefulWidget {
  final Article article;
  ArticleView({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(widget.article.title),
      ),
    );
  }
}
