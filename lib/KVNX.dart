import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'CsvcPage.dart';

class KVNXPage extends StatelessWidget{
  KVNXPage({Key key}):super(key: key);
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
                    child: Image.asset('assets/images/hanhchinh.png',fit: BoxFit.cover,
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
              height: 130.0,
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
                child: Text(" Khuôn viên, nhà xưởng: Các cơ sở của Đại học Đà Nẵng được xây dựng trên 7 khuôn viên tại Đà Nẵng và thành phố Kon Tum với tổng diện tích mặt bằng hiện nay trên 80 ha.",
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
                      "  Dự án phát triển Đại học Đà Nẵng đang được khẩn trương triển khai xây dựng tại Khu đô thị Đại học Đà Nẵng tại Hòa Quý - Điện Ngọc với diện tích 300 ha.",
                      textAlign: TextAlign.justify,),
                    Text(
                      "  Hệ thống các giảng đường được xây dựng hoàn chỉnh và thường xuyên được nâng cấp trang thiết bị hiện đại đáp ứng nhu cầu đào tạo và nghiên cứu của Đại học Đà Nẵng.",
                      textAlign: TextAlign.justify,),
                    Text(
                      "  Các trung tâm nghiên cứu và các phòng thí nghiệm đang từng bước được hiện đại hóa nhờ các chương trình đầu tư trọng điểm, đầu tư chiều sâu và các dự án vốn vay ODA, các chương trình hợp tác quốc tế. Một số phòng thí nghiệm tiêu biểu như  Phòng thí nghiệm Động cơ-Ô tô, Phòng thí nghiệm Cơ Điện Tử, Phòng thí nghiệm Nhiệt, Phòng thí nghiệm Điện-Điện tử, Phòng thí nghiệm nền móng công trình, Phòng thí nghiệm Xây dựng, Phòng thí nghiệm Công nghệ dầu khí, Phòng thí nghiệm Hệ thống điện, Phòng thí nghiệm Môi trường.",
                      textAlign: TextAlign.justify,),
                    Text(
                      "  Các trung tâm nghiên cứu và các phòng thí nghiệm đang từng bước được hiện đại hóa nhờ các chương trình đầu tư trọng điểm, đầu tư chiều sâu và các dự án vốn vay ODA, các chương trình hợp tác quốc tế. Một số phòng thí nghiệm tiêu biểu như  Phòng thí nghiệm Động cơ-Ô tô, Phòng thí nghiệm Cơ Điện Tử, Phòng thí nghiệm Nhiệt, Phòng thí nghiệm Điện-Điện tử, Phòng thí nghiệm nền móng công trình, Phòng thí nghiệm Xây dựng, Phòng thí nghiệm Công nghệ dầu khí, Phòng thí nghiệm Hệ thống điện, Phòng thí nghiệm Môi trường.",
                      textAlign: TextAlign.justify,),
                    Text(
                      " Trung tâm Y khoa được bố trí tại trung tâm thành phố Đà Nẵng phục vụ cho việc nghiên cứu, thực hành lâm sàng cho sinh viên ngành Y - Dược. ",
                      textAlign: TextAlign.justify,),
                    Text(
                      "  Đại học Đà Nẵng còn có Trung tâm Thể thao và Khoa Giáo dục Thể chất với cơ sở giảng dạy thể dục-thể thao hiện đại và là nơi tổ chức các sự kiện văn hóa, thể thao của Đại học Đà Nẵng.",
                      textAlign: TextAlign.justify,),
                    Container(
                      height: 200.0,
                      width: 4000.0,
                      margin: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('assets/images/nhaxuong.png',fit: BoxFit.cover,
                          height: 70.0,
                          width: 260.0,
                        ),
                      ),
                    ),
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
