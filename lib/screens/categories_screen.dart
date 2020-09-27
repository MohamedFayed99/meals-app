import 'package:flutter/material.dart';
import '../widgets/category_item_widget.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        children: DummyCategories.map((e) => CategoryItem(
         title: e.title,
          color: e.color,
          id: e.id,
        )).toList(),
    );
  }
}
