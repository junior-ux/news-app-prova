import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/widgets/titulo_app.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {

  final String blogUrl;
  ArticleView({@required this.blogUrl});

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

  final Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TituloApp(),
        centerTitle: true,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.share,color: kCorPrimaria,))
        ],
        backgroundColor: kCorSecundaria,
        elevation: 0.0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebView(
          initialUrl:  widget.blogUrl,
          onWebViewCreated: (WebViewController webViewController){
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}