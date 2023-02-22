import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisExtent: 20,
        ),
        children: dummyCategories
            .map(
              (catData) => CategoryItem(
                    catData.title,
                    catData.color,
                  ),
            )
            .toList(),
      ),
    );
  }
}
