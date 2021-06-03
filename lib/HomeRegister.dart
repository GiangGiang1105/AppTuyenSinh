import 'package:danangud/service/auth.dart';
import 'package:danangud/xetdiem.dart';
import 'package:danangud/xethocba.dart';
import 'package:danangud/xettuyenthang.dart';
import 'package:flutter/material.dart';

class homeRegisterPage extends StatefulWidget {
  final Function toggleView;

  homeRegisterPage({this.toggleView});

  @override
  _homeRegisterPageState createState() => _homeRegisterPageState();
}

class _homeRegisterPageState extends State<homeRegisterPage> {
  final AuthService _auth = AuthService();

  String name = ' ';
  String dayofbirth = ' ';
  String phone = ' ';
  String namelogin = ' ';
  String email = ' ';
  String password = ' ';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back_ios),
      //     onPressed: null,
      //   ),
      //   title: Text('ĐĂNG KÝ XÉT TUYỂN'),
      // ),
      // body is the majority of the screen.
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/tuyensinh.jpg'),
                          width: 390.0,
                          margin: EdgeInsets.only(
                              left: 0.0, top: 0.0, bottom: 70.0, right: 0.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => xetTuyenThangPage()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [Color(0xFF0F74BD), Color(0xFF35A0EE)]),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'XÉT TUYỂN THẲNG',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => xetHocBaPage()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [Color(0xFF0F74BD), Color(0xFF35A0EE)]),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'ĐĂNG KÝ XÉT HỌC BẠ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: InkWell(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => xetDiemPage()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [Color(0xFF0F74BD), Color(0xFF35A0EE)]),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'ĐĂNG KÝ XÉT ĐIỂM THPT  ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
