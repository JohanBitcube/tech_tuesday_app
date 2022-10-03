import 'package:rxdart/subjects.dart';
import 'package:tech_tuesday/core/models/article_model.dart';
import 'package:tech_tuesday/src/home/repos/home_view_repo.dart';

class HomeViewBloc {
  HomeViewBloc() {
    getData();
  }

  final _subject = BehaviorSubject<List<Article>>();

  Stream<List<Article>> get stream => _subject.stream;
  Function(List<Article>) get _update => _subject.sink.add;

  dispose() {
    _subject.close();
  }

  getData() async {
    _update(await HomeViewRepo.getArticleList(1));
  }
}
