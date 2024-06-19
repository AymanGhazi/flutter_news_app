import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/news_item.dart';

class NewsContainer extends StatelessWidget {
  final NewsItem item;

  NewsContainer({super.key, required this.item}) {
    item.image ?? "assets/noImage.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 350,
          height: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(item.image!),
                  fit: BoxFit.fill,
                  opacity: 24)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 4),
        child: Text(
          item.title,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 1),
        child: Text(
          item.title,
          style: const TextStyle(color: Colors.black),
        ),
      )
    ]);
  }
}
