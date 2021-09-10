import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';

class IconeFavorito extends StatelessWidget {
  const IconeFavorito({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Icon(
        Icons.favorite_border,
        color: kCorPrimaria,
      ),
    );
  }
}
