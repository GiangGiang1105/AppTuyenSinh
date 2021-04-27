import 'package:danangud/inputs.dart';
import 'package:danangud/register.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key key}): super(key: key);

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
                      child: Text("ĐĂNG NHẬP", style: TextStyle(fontSize: 30,color: Colors.white)),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:20.0),
                      margin: EdgeInsets.only(left: 5.0),
                      alignment: Alignment.topLeft,
                      child: Text("Tuyển sinh Đại Học Đà Nẵng", style: TextStyle(fontSize: 20,color: Colors.white)),
                    ),
                    // Icon(
                    //     Icons.account_circle,
                    //     size:100,
                    //     color:Colors.white ,
                    // ),
                    // SizedBox(
                    //   height: 50,
                    // ),
                    // Text('Register',style: TextStyle(color: Colors.white,fontSize:20)),
                  ],
                )
            ),
            SizedBox(height: 60,),
            InputFields(
              hinttext: 'Tên đang nhập',
              icon: Icons.login,
            ),
            InputFields(
              hinttext: 'Mật Khẩu',
              icon: Icons.vpn_key,
            ),
            SizedBox(height: 25,),
            GestureDetector(
              child: Text(
                'Quên mật khẩu',
                textAlign: TextAlign.center,
                style:TextStyle(
                  color: Color(0xFF35A0EE),
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: (){
                final snackBar = SnackBar(content: Text("CHƯA HOÀN THÀNH"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            SizedBox(height: 25,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal:40 ),
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
                    'ĐĂNG NHẬP',
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
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Đăng nhập nhanh bằng tài khoản hoặc ',
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'Đăng ký',
                    textAlign: TextAlign.center,
                    style:TextStyle(
                      color: Color(0xFF35A0EE),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => registerPage()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal:25),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors:[Color(0xFFEC920C),Color(0xFFEEA435)]),
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
                        'FACEBOOK',
                        textAlign: TextAlign.center,
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal:20 ),
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors:[Color(0xFF13CE26),Color(0xFF35EE47)]),
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
                        'GOOGLE',
                        textAlign: TextAlign.center,
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

