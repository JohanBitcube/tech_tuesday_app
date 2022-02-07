import 'package:flutter/material.dart';
import 'package:tech_tuesday/core/models/article_model.dart';
import 'package:intl/intl.dart';
import 'package:tech_tuesday/core/utils/constants.dart';

class ArticleTitle extends StatelessWidget {
  final Article article;
  const ArticleTitle({
    Key? key,
    required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 32,
      ),
      child: Column(
        children: [
          Text(
            article.title,
            style: Constants.articleHeader,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Published On: ${DateFormat('d MMMM yyyy').format(article.date)}',
            style: Constants.articleCardDate,
          ),
        ],
      ),
    );
  }
}
