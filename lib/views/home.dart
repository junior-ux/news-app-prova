import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/helper/data.dart';
import 'package:news_app/helper/news.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/cards_noticias.dart';
import 'package:news_app/widgets/lista_categorias.dart';
import 'package:news_app/widgets/load_noticias.dart';
import 'package:news_app/widgets/navigation_buttom.dart';
import 'package:news_app/widgets/texto_principais_noticias.dart';
import 'package:news_app/widgets/titulo_app.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  List<ArticleModel> articles = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TituloApp(),
        centerTitle: true,
        backgroundColor: kCorSecundaria,
      ),
      body: _loading
          ? Center(
              child: LoadNoticias(),
            )
          : SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  //Categorias
                  Categorias(categories: categories),
                  //texto principais notícias
                  PrincipaisNoticias(),
                  //cards de notícias
                  Cards(articles: articles),
                ],
              ),
            ),
      bottomNavigationBar: Navegacao(),
    );
  }
}
