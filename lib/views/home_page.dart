import 'package:flutter/material.dart';
import 'package:news_app/widgets/catygory_list_view.dart';
import 'package:news_app/widgets/list_view_news.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontFamily: 'PTSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: 'Playwrit',
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CatygoryListView(),
            ),
            const SliverToBoxAdapter(
              child:SizedBox(height: 30,),
            ),



              ListViewNews(),
          ],
        ),
      ),
    );
  }
}
