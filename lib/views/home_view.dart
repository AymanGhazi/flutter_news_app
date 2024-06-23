import 'package:flutter/material.dart';
import 'package:flutter_news_app/views/categories_list_view.dart';
import 'package:flutter_news_app/views/news_listView.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoriesListView()),
              SliverToBoxAdapter(
                  child: SizedBox(
                height: 32,
              )),
              NewsListView(),
            ],
          )),
    );
  }
}
