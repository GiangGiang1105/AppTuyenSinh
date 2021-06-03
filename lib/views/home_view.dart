import 'dart:convert';

import 'package:danangud/CsvcPage.dart';
import 'package:danangud/Hocbong.dart';
import 'package:danangud/Huongnghiep.dart';
import 'package:flutter/material.dart';
import 'package:danangud/models/news_admissions_udn.dart';
import 'package:danangud/models/news_udn.dart';
import 'package:danangud/views/popular_tab_view.dart';
import 'package:danangud/views/recent_tab_view.dart';
import 'package:danangud/views/trending_tab_view.dart';
import 'package:danangud/widgets/constands.dart';
import 'package:http/http.dart' as http;

import '../HomeRegister.dart';
import '../NganhPage.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeView createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  List<News_udn> _news_udns = new List<News_udn>();
  List<News_admissions_udn> _news_admissions_udns =
      new List<News_admissions_udn>();

  @override
  void initState() {
    super.initState();
    _populateAllMovies();
  }

  void _populateAllMovies() async {
    final news_udns = await _fetchAllMovies();
    final news_admissions_udn = await _fetchAllAdmissions();
    setState(() {
      _news_udns = news_udns;
      _news_admissions_udns = news_admissions_udn;
    });
  }

  Future<List<News_udn>> _fetchAllMovies() async {
    // String url = "https://mocki.io/v1/f92afe21-de60-4f99-b0e0-26f437b9f211";
    // String url = "https://mocki.io/v1/1f9668b5-489b-4346-9986-2bde0f31a5ab";
    String url = "https://mocki.io/v1/2348f9d6-d0a6-4b17-aa07-c2326833646f";
    final response = await http.get(Uri.parse(url));
    // print(response.body);
    if (response.statusCode == 200) {
      final result = jsonDecode(utf8.decode(response.bodyBytes));
      Iterable list = result["Notification"];
      // print(list.length);
      return list.map((newsUdn) => News_udn.fromJson(newsUdn)).toList();
    } else {
      throw Exception("Failed to load ");
    }
    // return parseProducts(response.body);
  }

  Future<List<News_admissions_udn>> _fetchAllAdmissions() async {
    // String url = "https://mocki.io/v1/a05c68f7-a784-4326-94f3-333d8fd5c212";
    String url = "https://mocki.io/v1/8c207c4b-4615-4a95-ac4c-e1a505fce997";
    final response = await http.get(Uri.parse(url));
    // print(response.body);
    if (response.statusCode == 200) {
      final result = jsonDecode(utf8.decode(response.bodyBytes));
      Iterable list = result["Admissions"];
      // print(list.length);
      return list
          .map((newsAdmissionsUdn) =>
              News_admissions_udn.fromJson(newsAdmissionsUdn))
          .toList();
    } else {
      throw Exception("Failed to load ");
    }
    // return parseProducts(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "WELCOME",
                  textAlign: TextAlign.end,
                  style: kNonActiveTabStyle,
                ),
                subtitle: Text(
                  "Sang",
                  textAlign: TextAlign.end,
                  style: kActiveTabStyle,
                ),
                trailing: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage("assets/ava.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TabBar(
                  labelColor: kBlue,
                  unselectedLabelColor: kGrey1,
                  unselectedLabelStyle: kNonActiveTabStyle,
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelStyle: kActiveTabStyle.copyWith(fontSize: 22.0),
                  tabs: [
                    Tab(text: "Thông Tin"),
                    Tab(text: "Đăng Ký Xét Tuyển"),
                    Tab(text: "Hướng Nghiệp"),
                    Tab(text: "Ngành Nghề Đào Tạo"),
                    Tab(text: "Cơ Sở Vật Chất"),
                    Tab(text: "Học Bổng"),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PopularTabView(
                news_udns: _news_udns,
                news_admissions_udns: _news_admissions_udns),
            homeRegisterPage(),
            Huongnghiep(),
            NganhPage(),
            CsvcPage(),
            Hocbong(),
          ],
        ),
      ),
    );
  }
}
