import 'package:flutter/material.dart';
import 'package:news_app/models/news_item_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_tile.dart';

class ListViewNews extends StatefulWidget {
  @override
  State<ListViewNews> createState() => _ListViewNewsState();
}

class _ListViewNewsState extends State<ListViewNews> {
  // final List<ItemNewsModel> newsList = const [
  //   ItemNewsModel(
  //       descrption:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatuf ocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex ',
  //       image: 'assets/images/business.png',
  //       title:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatufocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex '),
  //   ItemNewsModel(
  //       descrption: 'descrption',
  //       image: 'assets/images/entertaiment.avif',
  //       title:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatufocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex '),
  //   ItemNewsModel(
  //       descrption: 'descrption',
  //       image: 'assets/images/general.jpeg',
  //       title:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatuf ocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex '),
  //   ItemNewsModel(
  //       descrption:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatuf ocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex ',
  //       image: 'assets/images/health.avif',
  //       title:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatufocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex '),
  //   ItemNewsModel(
  //       descrption: 'descrption',
  //       image: 'assets/images/science.avif',
  //       title:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatufocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex '),
  //   ItemNewsModel(
  //       descrption: 'descrption',
  //       image: 'assets/images/sports.jpeg',
  //       title:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatufocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex '),
  //   ItemNewsModel(
  //       descrption: 'descrption',
  //       image: 'assets/images/technology.jpeg',
  //       title:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatuf ocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex '),
  //   ItemNewsModel(
  //       descrption: 'descrption',
  //       image: 'assets/images/science.avif',
  //       title:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatufocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex '),
  //   ItemNewsModel(
  //       descrption: 'descrption',
  //       image: 'assets/images/sports.jpeg',
  //       title:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatufocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex '),
  //   ItemNewsModel(
  //       descrption: 'descrption',
  //       image: 'assets/images/technology.jpeg',
  //       title:
  //           ' yecbsicbdvogffgecg tufocuvsdooffgeca tufocuvsdooffgecatuf ocuvsdooffgeca cfeg7gqawbndxn[9eyqf yqgfxwaex '),
  // ];

  List<ItemNewsModel> articles = [];
  @override
  void initState() {
    getNews();
    super.initState();
  }

  void getNews() async {
    articles = await NewsServices().getNews('other');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) => NewsTile(
        newsModel: articles[index],
      ),
    );
  }
}
