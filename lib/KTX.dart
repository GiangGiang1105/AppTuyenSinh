import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'CsvcPage.dart';

class KTXPage extends StatelessWidget{
  KTXPage({Key key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: 4000.0,
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset('assets/images/ktx.png',fit: BoxFit.cover,
                      height: 70.0,
                      width: 260.0,
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: EdgeInsets.only(top: 20.0, left: 10.0),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) {
                              return CsvcPage();
                            },
                            ),
                            );
                          },
                        ))),
              ],
            ),
            // tieu de
            Container(
              height: 90.0,
              width: 4000.0,
              margin: EdgeInsets.only(top: 10.0),
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
                  )
              ),
              child: Container(
                padding: EdgeInsets.only(top: 10.0, right: 5.0 ,left: 5.0),
                child: Text("   K?? t??c x??: H??? th???ng k?? t??c x?? c???a ?????i h???c ???? N???ng hi???n nay g???m 12 t??a nh?? n??m t???ng.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black,
                      fontSize: 20),),
              ),
            ),
            // noi dung
            Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "   Trong ??o??, 2 nh?? b???n t???ng v?? 3 nh?? hai t???ng, khang trang v?? ti???n nghi, ph???n l???n c?? khu v??? sinh kh??p k??n, c?? kh??? n??ng ph???c v??? ch??? ??n ??? cho h??n 9.000 sinh vi??n.",
                      textAlign: TextAlign.justify,),
                    Text(
                      "  T???i c??c khu k?? t??c x?? ?????u c?? b??? tr?? c??c ph??ng t??? h???c, ph??ng m??y t??nh, c??u l???c b???, ph??ng t???p, s??n t???p th??? d???c th??? thao, nh?? ??n, qu???y gi???i kh??t... ????p ???ng nhu c???u t??? h???c, sinh ho???t, ??n u???ng v?? gi???i tr?? c???a sinh vi??n.",
                      textAlign: TextAlign.justify,),

                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
