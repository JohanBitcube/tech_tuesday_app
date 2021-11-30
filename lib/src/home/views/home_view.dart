import 'package:flutter/material.dart';
import 'package:tech_tuesday/core/models/article_model.dart';
import 'package:tech_tuesday/core/utils/constants.dart';
import 'package:tech_tuesday/src/home/bloc/home_view_bloc.dart';
import 'package:tech_tuesday/src/home/widgets/article_card.dart';

class HomeView extends StatefulWidget {
  final String? val;
  HomeView({Key? key, this.val}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeViewBloc _bloc = HomeViewBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

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
      body: StreamBuilder(
        stream: _bloc.stream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) => ArticleCard(
                article: articles[index],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
