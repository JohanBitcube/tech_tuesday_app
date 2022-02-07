class Article {
  final String title;
  final String content;
  final String imageUrl;
  final DateTime date;

  Article({
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.date,
  });

  factory Article.fromMap(Map<String, dynamic> json) => Article(
        title: json['title']['rendered'],
        content: _contentWithoutYoutube(json['content']['rendered']),
        imageUrl: _getImageUrl(json['yoast_head']),
        date: DateTime.parse(json['date']),
      );

  static List<Article> fromMapList(List<dynamic> jsonList) =>
      jsonList.map((json) => Article.fromMap(json)).toList();

  static String _getImageUrl(String yoast) {
    return yoast.split('"').firstWhere((element) => element.contains('.png'));
  }

  static String _contentWithoutYoutube(String content) {
    var html = content
        .replaceAll('<div class="fusion', '<<SPLIT>><div class="fusion')
        .split('<<SPLIT>>');
    html.removeWhere((element) => element.contains('fusion-youtube'));
    return html.join();
  }
}
