import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/category_item.dart';
import 'package:flutter_news_app/models/news_item.dart';
import 'package:flutter_news_app/widgets/news_container.dart';

import '../widgets/category_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(title: "business", image: "assets/business.avif"),
    CategoryModel(title: "entertaiment", image: "assets/entertaiment.avif"),
    CategoryModel(title: "general", image: "assets/general.avif"),
    CategoryModel(title: "health", image: "assets/health.avif"),
    CategoryModel(title: "science", image: "assets/science.avif"),
    CategoryModel(title: "sports", image: "assets/sports.avif"),
    CategoryModel(title: "technology", image: "assets/technology.jpeg"),
  ];
  final List<NewsItem> news = const [
    NewsItem(
      title:
          "business dfsf sdfsd sdfsdf sdfsdfsd sdfsdf sdfsdf sdfs dssf sdfsd dsfsd fsdf sdasd ",
      image: "assets/business.avif",
      newsBody:
          'fsdfsdf sfsdf dsfsdfsdfs sdfsdfsd dsfsdfs fsdfsd fsdfsd fsdfsdf sdf',
    ),
    NewsItem(
        title: "entertaiment",
        image: "assets/entertaiment.avif",
        newsBody: ' sfsdfdsfsdf'),
    NewsItem(
        title: "general",
        image: "assets/general.avif",
        newsBody: 'dfsdfsdf dsfsdf'),
    NewsItem(
        title: "health",
        image: "assets/health.avif",
        newsBody: ' sdfsdf sdfsdf sdfds'),
    NewsItem(
        title: "science",
        image: "assets/science.avif",
        newsBody: ' sdfdsf sfsdf sdfsdf'),
    NewsItem(
        title: "sports sdsdasda dadasdas sadasd adsada sadasdasd",
        image: "assets/sports.avif",
        newsBody: 'sdfsdfs sdfsdf sdfsdf asdasd'),
    NewsItem(
        title: "technology",
        image: "assets/technology.jpeg",
        newsBody: 'dsfsdf sdfsdf sdfsdf'),
  ];

  @override
  Widget build(BuildContext context) {
    final title = RichText(
        text: const TextSpan(
      text: 'News ',
      style: TextStyle(
          color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
      children: <TextSpan>[
        TextSpan(text: 'Cloud', style: TextStyle(color: Colors.orange)),
      ],
    ));

    return Scaffold(
      appBar: AppBar(
        title: title,
        centerTitle: true,
      ),
      body: Column(
        children: [
          //horizental Categories
          SizedBox(
            height: 100,
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryItem(item: categories[index]);
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          //News
          Expanded(
            child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return NewsContainer(item: news[index]);
                }),
          ),
        ],
      ),
    );
  }
}
