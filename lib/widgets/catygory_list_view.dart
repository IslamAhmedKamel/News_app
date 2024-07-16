import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/item_home-category.dart';

// ignore: must_be_immutable
class CatygoryListView extends StatelessWidget {
  List<CatygoryModel> catsList = const [
    CatygoryModel(pathImage: 'assets/images/business.png', text: 'Business'),
    CatygoryModel(
        pathImage: 'assets/images/entertaiment.avif', text: 'Entertaiment'),
    CatygoryModel(pathImage: 'assets/images/health.avif', text: 'Health'),
    CatygoryModel(pathImage: 'assets/images/science.avif', text: 'Science'),
    CatygoryModel(pathImage: 'assets/images/sports.jpeg', text: 'Sorts'),
    CatygoryModel(
        pathImage: 'assets/images/technology.jpeg', text: 'Technology'),
    CatygoryModel(pathImage: 'assets/images/general.jpeg', text: 'General'),
  ];

  CatygoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => ItemCategory(
          category: catsList[index],
        ),
        itemCount: catsList.length,
      ),
    );
  }
}
