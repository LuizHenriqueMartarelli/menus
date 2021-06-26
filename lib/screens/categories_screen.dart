import 'package:flutter/material.dart';
import 'package:menus/components/category_item.dart';
import 'package:menus/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children:
          DUMMY_CATEGORIES.map((cat) => CategoryItem(category: cat)).toList(),
    );
  }
}
