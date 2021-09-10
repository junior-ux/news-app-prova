import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/views/article_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NoticiaWV extends StatelessWidget {
  const NoticiaWV({
    Key key,
    @required this.widget,
    @required Completer<WebViewController> controller,
  })  : _controller = controller,
        super(key: key);

  final ArticleView widget;
  final Completer<WebViewController> _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: WebView(
        initialUrl: widget.blogUrl,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
