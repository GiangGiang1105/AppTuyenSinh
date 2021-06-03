import 'dart:math';

import 'package:flutter/material.dart';
import 'package:danangud/models/news_admissions_udn.dart';
import 'package:danangud/widgets/constands.dart';

class SecondaryCard extends StatelessWidget {
  random(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }

  final News_admissions_udn news;
  SecondaryCard({this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: kGrey3, width: 1.0),
      ),
      child: Row(
        children: [
          Container(
            width: 90.0,
            height: 135.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: NetworkImage(news.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: kTitleCard,
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    news.detailTypeData,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: kDetailContent,
                  ),
                  Spacer(),
                  Row(children: [
                    Text(news.created_at, style: kDetailContent),
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
                  ])
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
