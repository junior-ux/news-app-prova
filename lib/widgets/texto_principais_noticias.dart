import 'package:flutter/material.dart';

class PrincipaisNoticias extends StatelessWidget {
  const PrincipaisNoticias({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 8.0, bottom: 8.0),
        child: Text(
          'Principais notícias ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
