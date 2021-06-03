import 'package:danangud/KVNX.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'HomeRegister.dart';
import 'HomeRegister.dart';
import 'KVNX.dart';
import 'KTX.dart';
import 'TTTH.dart';
import 'HT.dart';

class CsvcPage extends StatelessWidget {
  CsvcPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/nhaxuong.png',
                          height: 70.0,
                          width: 260.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return KVNXPage();
                      }));
                    },
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/trungtamtinhoc.png',
                          height: 70.0,
                          width: 260.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return TTTHPage();
                      }));
                    },
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/ktx.png',
                          height: 70.0,
                          width: 260.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return KTXPage();
                      }));
                    },
                  ),
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: ClipRRect(
                        // tag: 'imageHero',
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          'assets/images/hatang.png',
                          height: 70.0,
                          width: 260.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return HTPage();
                      }));
                    },
                  ),
                ],
              ),
            ),
            // thong tin csvc cac truong dai hoc
            Container(
              height: 56.0,
              width: 4000.0,
              margin: EdgeInsets.only(top: 50.0),
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(
                  color: Color(0xFF908C8C),
                  width: 3.0,
                ),
                bottom: BorderSide(
                  color: Color(0xFF908C8C),
                  width: 3.0,
                ),
              )),
              child: Container(
                padding: EdgeInsets.only(top: 18.0),
                child: Text(
                  "Thông tin cơ sở vật chất Đại học Đà Nẵng",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            //list thong tin
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
                          'assets/images/nhaxuong.png',
                          height: 70.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return KVNXPage();
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
                              "Khuôn viên, nhà xưởng: Các cơ sở của Đại học Đà Nẵng được xây dựng trên 7 khuôn viên..."),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return KVNXPage();
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
                          'assets/images/trungtamtinhoc.png',
                          height: 70.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return TTTHPage();
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
                            "Trung tâm Thông tin Học liệu và Truyền thông Đại học Đà Nẵng (CLIRC) là một trong những mô hình thư viện...",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return TTTHPage();
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
                          'assets/images/ktx.png',
                          height: 70.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return KTXPage();
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
                            " Ký túc xá: Hệ thống ký túc xá của Đại học Đà Nẵng hiện nay gồm 12 tòa nhà năm tầng,...",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return KTXPage();
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
                          'assets/images/hatang.png',
                          height: 70.0,
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return HTPage();
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
                            "Hạ tầng công nghệ thông tin: Toàn bộ các đơn vị thành viên thuộc  Đại học Đà Nẵng được...",
                            style: TextStyle(fontSize: 14.0),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return HTPage();
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
                MaterialPageRoute(builder: (context) => homeRegisterPage()),
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
