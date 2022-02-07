import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:tech_tuesday/core/models/article_model.dart';
import 'package:tech_tuesday/core/utils/constants.dart';
import 'package:intl/intl.dart';
import 'package:tech_tuesday/src/article_view/widgets/article_title.dart';

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
      appBar: AppBar(
        backgroundColor: Constants.defaultDarkBlue,
        title: SizedBox(
          height: 67,
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Constants.techTuesdayYellow,
                    Colors.white,
                  ],
                  stops: const [
                    0.6,
                    0.6,
                  ],
                ),
              ),
              child: Column(
                children: [
                  ArticleTitle(article: widget.article),
                  Image.network(
                    widget.article.imageUrl,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Html(
                  data: widget.article.content,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
