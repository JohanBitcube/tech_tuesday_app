import 'package:tech_tuesday/core/models/article_model.dart';
import 'package:tech_tuesday/core/network/api.dart';

class HomeViewRepo {
  static Future<List<Article>> getArticleList(int pageNumber) async {
    List<dynamic> response =
        await API.get('posts?page=$pageNumber&per_page=10');
    return Article.fromMapList(response);
  }
}
