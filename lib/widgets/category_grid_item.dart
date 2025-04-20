import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(context) {
    return Container(
      padding:const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            category.color.withAlpha((0.55 * 255).round()),
            category.color.withAlpha((0.9 * 255).round()),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    );
  }
}
