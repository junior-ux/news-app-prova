import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';


class Navegacao extends StatelessWidget {
  const Navegacao({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: kCorPrimaria),
          label: 'Inicio',
          backgroundColor: kCorSecundaria,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: kCorPrimaria),
          label: 'Configurações',
          backgroundColor: kCorSecundaria,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: kCorPrimaria),
          label: 'Favoritos',
          backgroundColor: kCorPrimaria,
        ),
      ],
    );
  }
}
