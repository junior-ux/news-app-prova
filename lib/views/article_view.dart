import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/widgets/icone_favorito.dart';
import 'package:news_app/widgets/navigation_buttom.dart';
import 'package:news_app/widgets/titulo_app.dart';
import 'package:news_app/widgets/webview_noticia.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String blogUrl;
  ArticleView({@required this.blogUrl});

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TituloApp(),
        centerTitle: true,
        actions: <Widget>[
          IconeFavorito(),
        ],
        backgroundColor: kCorSecundaria,
      ),
      body: NoticiaWV(widget: widget, controller: _controller),
      bottomNavigationBar: Navegacao(),
    );
  }
}
