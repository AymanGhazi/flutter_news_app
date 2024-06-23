import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/category_item.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel item;
  const CategoryItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return 
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width - 100.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(item.image),
                    fit: BoxFit.fill,
                    opacity: 24)),
            child: ClipRRect(
              // make sure we apply clip it properly
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white.withOpacity(0.50),
                  child: Text(
                    item.title,
                    style: const TextStyle(
                        fontSize: 28, color: Colors.black87),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
