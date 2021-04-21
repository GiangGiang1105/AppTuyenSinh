import 'package:danangud/inputs.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class registerPage extends StatefulWidget {

  final Function toggleView;
  registerPage({this.toggleView});

  @override
  _registerPageState createState() => _registerPageState();
}

class _registerPageState extends State<registerPage>{

  final _name = TextEditingController();
  bool _validate = false;

  String name=' ';
  String dayofbirth = ' ';
  String phone = ' ';
  String namelogin=' ';
  String email=' ';
  String password = ' ';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
                height:315,
                width:double.infinity,
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:[Color(0xFF0F74BD),Color(0xFF35A0EE)]
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left:20.0, top:20.0, bottom: 20.0,right: 10),
                            padding: EdgeInsets.only(left:5.0, top:10),
                            alignment: Alignment.topLeft,
                            child:
                            Image.asset('assets/images/3.png'),
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text("ĐẠI HỌC ĐÀ NẴNG", style: TextStyle(fontSize: 29,color: Color(0xFF013552),fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                margin: EdgeInsets.only(top:8),
                                child: Text("THE UNIVERSITY OF DANANG", style: TextStyle(fontSize: 18,color: Color(0xFFF4EC23),fontWeight: FontWeight.bold)),
                              ),
                            ],
                          )
                        ]
                    ),
                    Container(
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.only(left:5.0),
                      alignment: Alignment.topLeft,
                      child: Text("ĐĂNG KÝ", style: TextStyle(fontSize: 30,color: Colors.white)),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:20.0),
                      margin: EdgeInsets.only(left: 5.0),
                      alignment: Alignment.topLeft,
                      child: Text("Tuyển sinh Đại Học Đà Nẵng", style: TextStyle(fontSize: 20,color: Colors.white)),
                    ),
                  ],
                )
            ),
            SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0,2),
                    blurRadius: 3,
                  ),
                ]
            ),
            child: TextFormField(
              validator: (val) =>
              val.length < 1 ? 'Hãy nhập họ và tên' : null,
              onChanged: (val){
                setState(()=> name = val);
              },
              obscureText: false,
              keyboardType: TextInputType.name,
              controller: _name,
              autocorrect: false,
              decoration: InputDecoration(
                hintText: 'Họ và Tên',
                prefixIcon: Icon(Icons.person),
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.blue)),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 15, horizontal: 20),
              ),
          ),
          ),
        ),

            // InputFields(
            //   hinttext: 'Họ và Tên',
            //   icon: Icons.person,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0,2),
                        blurRadius: 3,
                      ),
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Ngày Sinh',
                    prefixIcon: Icon(Icons.calendar_today),
                  ),
                  onChanged: (text) {
                    dayofbirth = text;
                  },
                ),
              ),
            ),
            // InputFields(
            //   hinttext: 'Ngày Sinh',
            //   icon: Icons.calendar_today,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0,2),
                        blurRadius: 3,
                      ),
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Số điện thoại',
                    prefixIcon: Icon(Icons.phone),
                  ),
                  onChanged: (text) {
                    phone = text;
                  },
                ),
              ),
            ),
            // InputFields(
            //   hinttext: 'Số điện thoại',
            //   icon: Icons.phone,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0,2),
                        blurRadius: 3,
                      ),
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Tên đang nhập',
                    prefixIcon: Icon(Icons.login),
                  ),
                  onChanged: (text) {
                    namelogin = text;
                  },
                ),
              ),
            ),
            // InputFields(
            //   hinttext: 'Tên đang nhập',
            //   icon: Icons.login,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0,2),
                        blurRadius: 3,
                      ),
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Mật Khẩu',
                    prefixIcon: Icon(Icons.vpn_key),
                  ),
                  onChanged: (text) {
                    password = text;
                  },
                ),
              ),
            ),
            // InputFields(
            //   hinttext: 'Mật Khẩu',
            //   icon: Icons.vpn_key,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0,2),
                        blurRadius: 3,
                      ),
                    ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  onChanged: (text) {
                    email = text;
                  },
                ),
              ),
            ),
            // InputFields(
            //   hinttext: 'Email',
            //   icon: Icons.email,
            // ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal:40 ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _name.text.isEmpty ? _validate = true : _validate = false;
                  });
                },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors:[Color(0xFF0F74BD),Color(0xFF35A0EE)]),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset:Offset(0,2),
                        )]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:10),
                      child: Text(
                        'ĐĂNG KÝ',
                        textAlign: TextAlign.center,
                        style:TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bạn đã có tài khoản? '),
                GestureDetector(
                  child: Text('Đăng nhập',
                    style: TextStyle(
                        color: Color(0xFF35A0EE)
                    ),
                  ),
                  // onTap:(){},
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loginPage()),
                    );
                  },
                )
              ],)
          ],
        ),
      ),
    );
  }
  }


