import 'dart:math';

import 'package:flutter/material.dart';
import 'package:danangud/models/news_udn.dart';
import 'package:danangud/widgets/constands.dart';
import 'package:tiengviet/tiengviet.dart';

class PrimaryCard extends StatelessWidget {
  random(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }

  @override
  final News_udn news;
  PrimaryCard({this.news});
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: kGrey3, width: 1.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 5.0,
                backgroundColor: kBlue,
              ),
              SizedBox(width: 10.0),
              Text("Thông báo")
            ],
          ),
          SizedBox(height: 5.0),
          Expanded(
            child: Hero(
              tag: news.id,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: NetworkImage(news.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            news.name,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: kTitleCard,
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Text(
                news.created_at,
                style: kDetailContent,
              ),
              SizedBox(width: 10.0),
              CircleAvatar(
                radius: 5.0,
                backgroundColor: kGrey1,
              ),
              SizedBox(width: 10.0),
              Text(
                "${random(3, 7)} min read",
                style: kDetailContent,
              )
            ],
          )
        ],
      ),
    );
  }
}
