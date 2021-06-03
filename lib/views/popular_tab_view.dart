import 'package:flutter/material.dart';
import 'package:danangud/models/news_admissions_udn.dart';
import 'package:danangud/models/news_udn.dart';
import 'package:danangud/widgets/articleViews.dart';
import 'package:danangud/widgets/constands.dart';
import 'package:danangud/widgets/primary_card.dart';
import 'package:danangud/widgets/secondary_card.dart';

class PopularTabView extends StatelessWidget {
  final List<News_udn> news_udns;
  final List<News_admissions_udn> news_admissions_udns;
  PopularTabView({this.news_udns, this.news_admissions_udns});

  @override
  Widget build(BuildContext context) {
    print(news_udns);
    return Container(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            padding: EdgeInsets.only(left: 18.0),
            child: ListView.builder(
              // itemCount: news_udn == null ? 0 : news_udn.length,
              itemCount: news_udns.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final news_udn = news_udns[index];
                return InkWell(
                  onTap: () {
                    var posturl = news_udn.detailType;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticleView(
                          postUrl: posturl,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 12.0),
                    child: PrimaryCard(news: news_udn),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 25.0),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: Text(
                "THÔNG BÁO TUYỂN SINH",
                style: TextStyle(color: kBlue),
              ),
            ),
          ),
          ListView.builder(
              itemCount: news_admissions_udns.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                final news_admissions_udn = news_admissions_udns[index];
                return InkWell(
                  onTap: () {
                    var post_url = news_admissions_udn.detailType;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticleView(
                          postUrl: post_url,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 135.0,
                    margin:
                        EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                    child: SecondaryCard(news: news_admissions_udn),
                  ),
                );
              })
        ],
      ),
    );
  }
}
