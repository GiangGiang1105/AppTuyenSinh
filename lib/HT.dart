import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'CsvcPage.dart';

class HTPage extends StatelessWidget{
  HTPage({Key key}):super(key: key);
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
                    child: Image.asset('assets/images/hatang.png',fit: BoxFit.cover,
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
              height: 110.0,
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
                child: Text("   Hạ tầng công nghệ thông tin: Toàn bộ các đơn vị thành viên thuộc  Đại học Đà Nẵng được nối mạng cáp quang với đường truyền internet tốc độ 20Mb.",
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
                      "  Cơ sở hạ tầng công nghệ thông tin mạnh, hiện đại cho phép Đại học Đà Nẵng tổ chức các hội nghị, hội thảo qua mạng, đào tạo từ xa qua mạng. Đại học Đà Nẵng đảm trách đầu cầu Miền Trung của các hội nghị ngành của Bộ Giáo dục và Đào tạo. Ngoài ra, nhờ hệ thống công nghệ thông tin hoàn chỉnh, việc tổ chức đào tạo tín chỉ, đào tạo trực tuyến tại Đại học Đà Nẵng được tiến hành thuận lợi. Hầu hết các giáo trình, tài liệu học tập của các ngành, chuyên ngành đào tạo đều được đưa lên mạng để sinh viên có thể tham khảo trực tuyến.",
                      textAlign: TextAlign.justify,),
                    Text(
                      "  Khuôn viên của các đơn vị thành viên thuộc Đại học Đà Nẵng đều có mạng wireless để tạo điều kiện thuận lợi cho cán bộ và sinh viên truy cập thông tin. Hệ thống Live@edu của Microsoft đã được triển khai trong toàn Đại học Đà Nẵng tạo điều kiện phát triển ứng dụng công nghệ thông tin trong đào tạo và quản lý.",
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
