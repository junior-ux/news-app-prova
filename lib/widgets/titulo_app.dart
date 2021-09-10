import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';


class TituloApp extends StatelessWidget {
  const TituloApp({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 25),
        children: <TextSpan>[
          TextSpan(
            text: 'News',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: 'App',
            style: TextStyle(color: kCorPrimaria, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' P2',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
