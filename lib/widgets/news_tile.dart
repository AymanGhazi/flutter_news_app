import 'package:flutter/material.dart';
import 'package:flutter_news_app/models/news_item.dart';

class NewsTile extends StatelessWidget {
  final NewsItem item;

  NewsTile({super.key, required this.item}) {
    item.image ?? "assets/noImage.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image(
          image: AssetImage(item.image!),
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      Text(
        item.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        item.newsBody,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Colors.grey, fontSize: 14),
      ),
    ]);
  }
}
