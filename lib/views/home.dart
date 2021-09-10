import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/helper/data.dart';
import 'package:news_app/helper/news.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/blog_tile.dart';
import 'package:news_app/widgets/category_tile.dart';
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
              child: Container(
                child: CircularProgressIndicator(backgroundColor: kCorPrimaria, color: kBranco,),
              ),
            )
          : SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  //Categories
                  Container(
                    height: 70,
                    child: ListView.builder(
                      itemCount: categories.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryTile(
                          imageUrl: categories[index].imageUrl,
                          categoryName: categories[index].categoryName,
                        );
                      },
                    ),
                  ),
                  PrincipaisNoticias(),
                  //Blogs
                  Container(
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
                  ),

                ],
              ),

            ),
      bottomNavigationBar: Navegacao(),
    );
  }
}




