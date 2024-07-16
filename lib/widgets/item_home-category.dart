import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

// ignore: must_be_immutable
class ItemCategory extends StatelessWidget {
  CatygoryModel category;
  ItemCategory({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      alignment: Alignment.center,
      width: 230,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            category.pathImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Text(
        category.text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }
}
