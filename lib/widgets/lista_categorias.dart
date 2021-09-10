import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_tile.dart';

class Categorias extends StatelessWidget {
  const Categorias({
    Key key,
    @required this.categories,
  }) : super(key: key);

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
