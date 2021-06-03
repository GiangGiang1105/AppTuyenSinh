import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'CsvcPage.dart';

class TTTHPage extends StatelessWidget{
  TTTHPage({Key key}):super(key: key);
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
                    child: Image.asset('assets/images/trungtamtinhoc.png',fit: BoxFit.cover,
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
                child: Text("  Trung tâm Thông tin Học liệu và Truyền thông Đại học Đà Nẵng (CLIRC) là một trong những mô hình thư viện điện tử tiên tiến, hiện đại đầu tiên ở Việt Nam (thành lập năm 1999).",
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
                      "  Hiện CLIRC được trang bị hệ thống phần mềm Aleph/ Primo, kết nối cơ sở dữ liệu khoa học trực tuyến, chia sẻ khai thác giữa 11 đơn vị thành viên, trực thuộc Đại học Đà Nẵng. CLIRC cũng phối hợp với các cơ sở đào tạo cập nhật phát triển cơ sở dữ liệu nội sinh dạng tài liệu số các luận án, luận văn, báo cáo đề tài KHCN các cấp của giảng viên, học viên cao học, nghiên cứu sinh của Đại học Đà Nẵng, lưu trữ và truy cập trên hệ thống Dspace. Ngoài ra còn có bộ sưu tập chuyên khảo có giá trị trên nhiều lĩnh vực như Bộ sưu tập tài nguyên văn hóa Hoa Kỳ, tài liệu văn hóa Chăm-pa, các cơ sở dữ liệu nguồn mở, miễn phí phục vụ đào tạo, nghiên cứu khoa học…",
                      textAlign: TextAlign.justify,),
                    Text(
                      "  Các trường đại học thành viên, đơn vị trực thuộc Đại học Đà Nẵng đều có hệ thống trung tâm học liệu, thư viện các chuyên ngành, điển hình như Trung tâm Học liệu và Truyền thông Trường Đại học Bách khoa - Đại học Đà Nẵng (diện tích sử dụng 4000m2, gần 500 máy tính nối mạng, đường truyền tốc độ cao, phục vụ trực tiếp cùng lúc hơn 500 bạn đọc tại chỗ) đáp ứng nhu cầu của cán bộ, giảng viên, sinh viên cũng như các đối tượng người dùng tin khác.",
                      textAlign: TextAlign.justify,),
                    Container(
                      height: 200.0,
                      width: 4000.0,
                      margin: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('assets/images/vkulap.png',fit: BoxFit.cover,
                          height: 70.0,
                          width: 260.0,
                        ),
                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
