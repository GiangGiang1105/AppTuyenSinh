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
                child: Text("   Ký túc xá: Hệ thống ký túc xá của Đại học Đà Nẵng hiện nay gồm 12 tòa nhà năm tầng.",
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
                      "   Trong đó, 2 nhà bốn tầng và 3 nhà hai tầng, khang trang và tiện nghi, phần lớn có khu vệ sinh khép kín, có khả năng phục vụ chỗ ăn ở cho hơn 9.000 sinh viên.",
                      textAlign: TextAlign.justify,),
                    Text(
                      "  Tại các khu ký túc xá đều có bố trí các phòng tự học, phòng máy tính, câu lạc bộ, phòng tập, sân tập thể dục thể thao, nhà ăn, quầy giải khát... đáp ứng nhu cầu tự học, sinh hoạt, ăn uống và giải trí của sinh viên.",
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
