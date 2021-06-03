import 'package:danangud/widgets/articleViews.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Hocbong extends StatelessWidget {
  Hocbong({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 80.0,
              width: 4000.0,
              margin: EdgeInsets.only(left: 10.0, top: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Color(0xFF908C8C),
                  width: 1.5,
                ),
              )),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/33.png',
                          height: 60.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        //              return ArticleView();
                      }));
                    },
                  ),
                  Container(
                    height: 80.0,
                    width: 280.0,
                    padding: EdgeInsets.only(left: 5.0),
                    margin: EdgeInsets.only(top: 5.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            "Thông báo Chương trình Học bổng Đại sứ 2021 tại Ấn Độ",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            var post_url =
                                "http://www.udn.vn/tin-tuc/thong-bao/chi-tiet/thong-bao-chuong-trinh-hoc-bong-dai-su-2021-tai-an-do";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArticleView(
                                  postUrl: post_url,
                                ),
                              ),
                            );
                          },
                        ),
                        Container(
                          width: 280.0,
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "08/04/2021",
                            style: TextStyle(color: Color(0xFF908C8C)),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.0,
              width: 4000.0,
              margin: EdgeInsets.only(left: 10.0, top: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Color(0xFF908C8C),
                  width: 1.5,
                ),
              )),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/33.png',
                          height: 60.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        //             return ArticleView();
                      }));
                    },
                  ),
                  Container(
                    height: 80.0,
                    width: 280.0,
                    padding: EdgeInsets.only(left: 5.0),
                    margin: EdgeInsets.only(top: 5.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            "QĐ V/v Ban hành mức Học bổng cho Thí sinh đạt giải cấp Tỉnh/Thành phố",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              //                return ArticleView();
                            }));
                          },
                        ),
                        Container(
                          width: 280.0,
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "05/04/2021",
                            style: TextStyle(color: Color(0xFF908C8C)),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.0,
              width: 4000.0,
              margin: EdgeInsets.only(left: 10.0, top: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Color(0xFF908C8C),
                  width: 1.5,
                ),
              )),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/33.png',
                          height: 60.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        //            return ArticleView();
                      }));
                    },
                  ),
                  Container(
                    height: 80.0,
                    width: 280.0,
                    padding: EdgeInsets.only(left: 5.0),
                    margin: EdgeInsets.only(top: 5.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            "QĐ V/v Ban hành mức Học bổng tài năng năm 2021 ",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              //              return ArticleView();
                            }));
                          },
                        ),
                        Container(
                          width: 280.0,
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "09/03/2021",
                            style: TextStyle(color: Color(0xFF908C8C)),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.0,
              width: 4000.0,
              margin: EdgeInsets.only(left: 10.0, top: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Color(0xFF908C8C),
                  width: 1.5,
                ),
              )),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/33.png',
                          height: 60.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        //          return ArticleView();
                      }));
                    },
                  ),
                  Container(
                    height: 80.0,
                    width: 280.0,
                    padding: EdgeInsets.only(left: 5.0),
                    margin: EdgeInsets.only(top: 5.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            "QĐ V/v Ban hành mức Học bổng đối với các chương trình Tiên tiến & Quốc tế CMU,....",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              //              return ArticleView();
                            }));
                          },
                        ),
                        Container(
                          width: 280.0,
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "09/03/2021",
                            style: TextStyle(color: Color(0xFF908C8C)),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.0,
              width: 4000.0,
              margin: EdgeInsets.only(left: 10.0, top: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Color(0xFF908C8C),
                  width: 1.5,
                ),
              )),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/33.png',
                          height: 60.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        //         return ArticleView();
                      }));
                    },
                  ),
                  Container(
                    height: 80.0,
                    width: 280.0,
                    padding: EdgeInsets.only(left: 5.0),
                    margin: EdgeInsets.only(top: 5.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            "QĐ V/v Ban hành mức Học bổng Toàn phần /Bán phần cho Thí sinh trúng tuyển...",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              //                return ArticleView();
                            }));
                          },
                        ),
                        Container(
                          width: 280.0,
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "03/03/2021",
                            style: TextStyle(color: Color(0xFF908C8C)),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.0,
              width: 4000.0,
              margin: EdgeInsets.only(left: 10.0, top: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Color(0xFF908C8C),
                  width: 1.5,
                ),
              )),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/33.png',
                          height: 60.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        //           return ArticleView();
                      }));
                    },
                  ),
                  Container(
                    height: 80.0,
                    width: 280.0,
                    padding: EdgeInsets.only(left: 5.0),
                    margin: EdgeInsets.only(top: 5.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            "QĐ V/v Ban hành mức Học bổng cho Thí sinh đạt giải cấp Tỉnh/Thành phố",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              //               return ArticleView();
                            }));
                          },
                        ),
                        Container(
                          width: 280.0,
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "24/02/2021",
                            style: TextStyle(color: Color(0xFF908C8C)),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.0,
              width: 4000.0,
              margin: EdgeInsets.only(left: 10.0, top: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Color(0xFF908C8C),
                  width: 1.5,
                ),
              )),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/33.png',
                          height: 60.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        //          return ArticleView();
                      }));
                    },
                  ),
                  Container(
                    height: 80.0,
                    width: 280.0,
                    padding: EdgeInsets.only(left: 5.0),
                    margin: EdgeInsets.only(top: 5.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            "QĐ V/v Ban hành mức Học bổng đối với các chương trình Tiên tiến & Quốc tế CMU,....",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              //               return ArticleView();
                            }));
                          },
                        ),
                        Container(
                          width: 280.0,
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "24/02/2021",
                            style: TextStyle(color: Color(0xFF908C8C)),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80.0,
              width: 4000.0,
              margin: EdgeInsets.only(left: 10.0, top: 5.0),
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: Color(0xFF908C8C),
                  width: 1.5,
                ),
              )),
              child: Row(
                children: <Widget>[
                  InkWell(
                    child: Container(
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/33.png',
                          height: 60.0,
                          width: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        //          return ArticleView();
                      }));
                    },
                  ),
                  Container(
                    height: 80.0,
                    width: 280.0,
                    padding: EdgeInsets.only(left: 5.0),
                    margin: EdgeInsets.only(top: 5.0),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Text(
                            "QĐ V/v Ban hành mức Học bổng đối với các chương trình Tiên tiến & Quốc tế CMU,....",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              //            return ArticleView();
                            }));
                          },
                        ),
                        Container(
                          width: 280.0,
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text(
                            "15/05/2021",
                            style: TextStyle(color: Color(0xFF908C8C)),
                            textAlign: TextAlign.left,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // button dang ky
      floatingActionButton: Container(
          height: 70.0,
          width: 70.0,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    //                              return trang dang ki ts();
                  },
                ),
              );
            },
            backgroundColor: Color(0xFF35A0EE),
            elevation: 10,
            child: Text(
              "Đăng ký",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
