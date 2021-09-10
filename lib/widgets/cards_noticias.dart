import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import 'card_tile.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key key,
    @required this.articles,
  }) : super(key: key);

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return BlogTile(
            imageUrl: articles[index].urlToImage,
            title: articles[index].title,
            url: articles[index].url,
          );
        },
      ),
    );
  }
}
