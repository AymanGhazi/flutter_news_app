import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/category_item.dart';
import 'package:flutter_news_app/widgets/category_container.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
 final List<CategoryModel> categories = const [
    CategoryModel(title: "business", image: "assets/business.avif"),
    CategoryModel(title: "entertaiment", image: "assets/entertaiment.avif"),
    CategoryModel(title: "general", image: "assets/general.avif"),
    CategoryModel(title: "health", image: "assets/health.avif"),
    CategoryModel(title: "science", image: "assets/science.avif"),
    CategoryModel(title: "sports", image: "assets/sports.avif"),
    CategoryModel(title: "technology", image: "assets/technology.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            height: 100, 
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryItem(item: categories[index]);
                }));
  }
}