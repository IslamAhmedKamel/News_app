import 'package:flutter/material.dart';
import 'package:news_app/models/news_item_model.dart';

// ignore: must_be_immutable
class NewsTile extends StatelessWidget {
  NewsTile({required this.newsModel});

  ItemNewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              newsModel.image == null
                  ? "https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/X4LOFLXBFQI63J4OTJ6CIGFQBQ_size-normalized.jpg&w=1440"
                  : newsModel.image!,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            newsModel.title,
            maxLines: 2,
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 19,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            newsModel.descrption == null ? '' : newsModel.descrption!,
            maxLines: 3,
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
