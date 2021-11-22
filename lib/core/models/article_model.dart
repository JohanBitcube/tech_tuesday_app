class Article {
  final String title;
  final String content;

  Article({
    required this.title,
    required this.content,
  });

  factory Article.fromMap(Map<String, dynamic> json) => Article(
        title: json['title']['rendered'],
        content: json['content']['rendered'],
      );

  static List<Article> fromMapList(List<dynamic> jsonList) =>
      jsonList.map((json) => Article.fromMap(json)).toList();
}
