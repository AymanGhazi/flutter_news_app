import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/news_item.dart';
import 'package:flutter_news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });
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
    return
         SliverList(
                  delegate: SliverChildBuilderDelegate(childCount: news.length,
                      (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(bottom: 22),
                  child: NewsTile(item: news[index]),
                );
              }));
       
    
   
  }
}

//Working But not good Solution for performance 
//shrinkWrap is Building All Items at one time 
  // ListView.builder(
  //       itemCount: news.length,
  //       scrollDirection: Axis.vertical,
  //       physics: const NeverScrollableScrollPhysics(),
  //       shrinkWrap: true,
  //       itemBuilder: (context, index) {
  //         return Padding(
  //           padding: const EdgeInsets.only(bottom: 22),
  //           child: NewsTile(item: news[index]),
  //         );
  //       });
