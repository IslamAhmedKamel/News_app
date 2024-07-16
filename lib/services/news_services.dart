import 'package:dio/dio.dart';
import 'package:news_app/models/news_item_model.dart';

class NewsServices {
  final dio = Dio();

  dynamic getNews(String categoryName) async {
    dynamic response = await dio.get(
        'https://newsdata.io/api/1/latest?apikey=pub_4846091e6bd663d0ff61dc70920a4841c18de&country=eg&category=$categoryName');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articlesList = jsonData["results"];
    List<ItemNewsModel> newsList = [];
    for (var news in articlesList) {
      ItemNewsModel newsModel = ItemNewsModel(
          image: news['image_url'],
          descrption: news['description'],
          title: news['title']);
      newsList.add(newsModel);
    }
     return newsList;
  }
}
