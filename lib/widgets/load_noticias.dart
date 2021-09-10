import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';

class LoadNoticias extends StatelessWidget {
  const LoadNoticias({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircularProgressIndicator(
        backgroundColor: kCorPrimaria,
        color: kCorSecundaria,
      ),
    );
  }
}
