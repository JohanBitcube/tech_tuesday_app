import 'package:flutter/material.dart';
import 'package:tech_tuesday/core/models/article_model.dart';
import 'package:tech_tuesday/core/utils/constants.dart';
import 'package:intl/intl.dart';
import 'package:tech_tuesday/core/utils/routes.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  const ArticleCard({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          Routes.articleView,
          arguments: article,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 16,
        ),
        child: Column(
          children: [
            Image.network(article.imageUrl),
            Container(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                article.title,
                style: Constants.articleCardTitle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                DateFormat('d MMMM yyyy').format(article.date),
                style: Constants.articleCardDate,
              ),
            )
          ],
        ),
      ),
    );
  }
}
