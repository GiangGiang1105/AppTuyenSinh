import 'package:danangud/service/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'login.dart';
import 'package:date_time_picker/date_time_picker.dart';
class registerPage extends StatefulWidget {
  final Function toggleView;

  registerPage({this.toggleView});

  @override
  _registerPageState createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  final AuthService _auth = AuthService();

  final _name = TextEditingController();
  final _dayofbirth = TextEditingController();
  final _phone = TextEditingController();
  final _namelogin = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  TextEditingController dateCtl = TextEditingController();

  bool _validate = false;
  final _formKey = GlobalKey<FormState>();

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
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                  height: 315,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF0F74BD), Color(0xFF35A0EE)]),
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: 20.0, top: 20.0, bottom: 20.0, right: 10),
                          padding: EdgeInsets.only(left: 5.0, top: 10),
                          alignment: Alignment.topLeft,
                          child: Image.asset('assets/images/3.png'),
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text("ĐẠI HỌC ĐÀ NẴNG",
                                  style: TextStyle(
                                      fontSize: 29,
                                      color: Color(0xFF013552),
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: Text("THE UNIVERSITY OF DANANG",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFFF4EC23),
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        )
                      ]),
                      Container(
                        margin: EdgeInsets.all(20.0),
                        padding: EdgeInsets.only(left: 5.0),
                        alignment: Alignment.topLeft,
                        child: Text("ĐĂNG KÝ",
                            style:
                                TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20.0),
                        margin: EdgeInsets.only(left: 5.0),
                        alignment: Alignment.topLeft,
                        child: Text("Tuyển sinh Đại Học Đà Nẵng",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 3,
                        ),
                      ]),
                  child: TextFormField(
                    validator: (val) =>
                        val.length < 2 ? 'Hãy nhập họ và tên' : null,
                    onChanged: (val) {
                      setState(() => name = val);
                    },
                    obscureText: false,
                    controller: _name,
                    decoration: InputDecoration(
                      hintText: 'Họ và Tên',
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 50),
                    ),
                  ),
                ),
              ),
              // InputFields(
              //   hinttext: 'Họ và Tên',
              //   icon: Icons.person,
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 3,
                        ),
                      ]),
                  child:  DateTimePicker(
                    type: DateTimePickerType.date,
                    dateMask: 'yyyy/MM/dd',
                    controller: _dayofbirth,
                    validator: (val) =>
                    val.length < 2 ? 'Hãy nhập ngày sinh' : null,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.event),
                      hintText: 'Ngày sinh',
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12, horizontal: 12),
                    ),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                    selectableDayPredicate: (date) {
                      if (date.weekday == 6 || date.weekday == 7) {
                        return false;
                      }
                      return true;
                    },
                    onChanged: (val) => setState(() => dayofbirth = val),
                  ),
                ),
              ),
              // InputFields(
              //   hinttext: 'Ngày Sinh',
              //   icon: Icons.calendar_today,
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 3,
                        ),
                      ]),
                  child: TextFormField(
                    validator: (val) =>
                        val.length < 2 ? 'Hãy nhập số điện thoại' : null,
                    onChanged: (val) {
                      setState(() => phone = val);
                    },
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    controller: _phone,
                    decoration: InputDecoration(
                      hintText: 'Số điện thoại',
                      prefixIcon: Icon(Icons.phone),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 50),
                    ),
                  ),
                ),
              ),
              // InputFields(
              //   hinttext: 'Số điện thoại',
              //   icon: Icons.phone,
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 3,
                        ),
                      ]),
                  child: TextFormField(
                    validator: (val) =>
                        val.length < 2 ? 'Hãy nhập tên đăng nhập' : null,
                    onChanged: (val) {
                      setState(() => namelogin = val);
                    },
                    obscureText: false,
                    controller: _namelogin,
                    decoration: InputDecoration(
                      hintText: 'Tên đăng nhập',
                      prefixIcon: Icon(Icons.login),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 50),
                    ),
                  ),
                ),
              ),
              // InputFields(
              //   hinttext: 'Tên đang nhập',
              //   icon: Icons.login,
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 3,
                        ),
                      ]),
                  child: TextFormField(
                    validator: (val) =>
                        val.length < 2 ? 'Hãy nhập mật khẩu' : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                    obscureText: true,
                    controller: _password,
                    decoration: InputDecoration(
                      hintText: 'Mật Khẩu',
                      prefixIcon: Icon(Icons.vpn_key),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 50),
                    ),
                  ),
                ),
              ),
              // InputFields(
              //   hinttext: 'Mật Khẩu',
              //   icon: Icons.vpn_key,
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 3,
                        ),
                      ]),
                  child: TextFormField(
                    validator: (val) =>
                        val.length < 2 ? 'Hãy nhập email' : null,
                    onChanged: (val) {
                      setState(() => email = val);
                    },
                    obscureText: false,
                    controller: _email,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 50),
                    ),
                  ),
                ),
              ),
              // InputFields(
              //   hinttext: 'Email',
              //   icon: Icons.email,
              // ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: InkWell(
                  onTap: () async {
                    if (_formKey.currentState.validate()) {
                      try {
                        await Firebase.initializeApp();
                        UserCredential user = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password);
                        User updateUser = FirebaseAuth.instance.currentUser;
                        updateUser.updateProfile(displayName: name);
                        var status =true;
                        _auth
                            .signUpUser(name, dayofbirth, phone, namelogin,
                                password, email)
                            .then((value){
                          Fluttertoast.showToast(
                              msg: "Đăng ký thành công!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.blueAccent,
                              textColor: Colors.black45,
                              fontSize: 16.0);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginPage()),
                          );
                        }).onError((error, stackTrace) {
                          Fluttertoast.showToast(
                              msg: "Đăng ký không thành công!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.blueAccent,
                              textColor: Colors.black45,
                              fontSize: 16.0);
                        });
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      } catch (e) {
                        print(e.toString());
                      }
                    }
                    ;
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
                        'ĐĂNG KÝ',
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
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Bạn đã có tài khoản? '),
                  GestureDetector(
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(color: Color(0xFF35A0EE)),
                    ),
                    // onTap:(){},
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginPage()),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
