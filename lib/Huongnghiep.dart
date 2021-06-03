import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'HomeRegister.dart';

class Huongnghiep extends StatelessWidget {
  Huongnghiep({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 0.0),
            child: Text("Chọn ngành, chọn nghề, chọn tương lai",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
                "Lựa chọn ngành nghề của mỗi người là việc rất quan trọng. Tuy nhiên, làm thế nào để chọn được cho mình một ngành nghề phù hợp với bản thân lại càng quan trọng hơn, vì đó là yếu tố mang tính quyết định cho sự thành công của bạn trong tương lai. Đó cũng chính là câu hỏi nhận được nhiều sự quan tâm của cả học sinh và lẫn các bậc phụ huynh mỗi mùa thi đến.",
                style: TextStyle(
                  fontSize: 18.0,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 0.0),
            child: Text("Lầm tưởng bản chất nghề",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
                "Khi định hướng cho mình về một nghề, một ngành học, nhiều bạn trẻ chỉ nghe cái tên mà xét đoán rất sơ lược về nghề đó,  ngành học đó. Thường nghe cơ khí thì các bạn nghĩ đến cảnh lấm lem dầu mỡ mà không biết rằng có nhưng kỹ sư không bao giờ phải cầm đến cây búa, hay nghe việc quản lý thì nghĩ rằng đó là quyền cao chức trọng và giàu có mà không nghĩ đến cái trách nhiệm và khối lượng công việc cực kỳ nặng nề mà người lãnh đạo phải gánh vác. Rất nhiều bạn thậm chí không thể phân biệt sự khác nhau trong chương trình đào tạo đại học ,cao đẳng và trung cấp. Từ đó dẫn đến kết quả lựa chọn nghề một cách hời hợt, rất dễ gây thất vọng và chán nản khi tiếp xúc trực tiếp với chương trình học hay nghề đó. ",
                style: TextStyle(
                  fontSize: 18.0,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 12.0),
            child: Text("Chọn nghề vì cha mẹ - chọn nghề theo trường chuyên",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
                "Không phải chỉ có những học sinh bình thường mới gặp khó khăn khi chọn nghề, ngành học, nhiều học sinh khá giỏi ở những trường chuyên lớp chọn cũng gặp những sai lầm rất chết người khi chọn cho mình con đường tương lai. Hiếu Học đã từng đề cập đến vấn đề: Thà rớt cao còn hơn đậu thấp ở một số học sinh khá giỏi. Mỗi người có một sở thích riêng, năng khiếu riêng và điểm yếu riêng. Nhưng khi chọn nghề lại phụ thuộc rất nhiều vào ý kiến gia đình cũng như xu hướng của bạn bè xung quanh là hết sức sai lầm. Điển hình nhất là những gia đình có truyền thống nghề y và nghề giáo và ở những trường trung học thuộc hàng top. Truyền thống là điều tốt đẹp và nên lưu giữ, nhưng nếu thật sự không hứng thú với nghề ấy, bạn không chỉ đánh mất tương lai của mình mà còn làm sụp đổ sự kỳ vọng của gia đình. Con của một gia đình bác sĩ trở thành một nhà báo hay con của thầy giáo là một doanh nhân thì không có gì là xấu cả.",
                style: TextStyle(
                  fontSize: 18.0,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 12.0),
            child: Text("Chọn nghề theo sở thích - nên hay không? ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
                "Sở thích luôn là một trong những tiêu chí quan trọng trong việc hướng nghiệp. Nếu không có sở thích, bạn sẽ không có hứng thú trong công việc, từ đó khó mà có được thành công trong cái nghề của mình. Vì vậy, bên cạnh sở thích của mình, bạn cần chú ý thật nhiều đến những tố chất cũng như khuyết điểm của bản thân. Đừng lầm tưởng những cái thật cơ bản như nếu vẽ giỏi thì có thể trở thành kiến trúc sư hay giỏi văn thì sẽ là phóng viên giỏi. Mỗi nghề luôn có những đòi hỏi người lao động cần có những tốt chất nào để có thể hoàn thành tốt công việc, hãy chú ý đến những đòi hỏi đó để tránh sai lầm khi chọn cho mình một nghề, một ngành học thích hợp. ",
                style: TextStyle(
                  fontSize: 18.0,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 12.0),
            child: Text("Bạn có thể dùng phối hợp một số cách sau:  ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
                " Căn cứ vào điểm học tập, nhất là các môn thi tuyển sinh đầu vào của ngành bạn định theo học. Tìm hiểu điểm trúng tuyển của ngành nghề đó ở trường bạn muốn thi vào trong ba năm liên tiếp, từ đó so sánh với sức học của mình cho phép bạn xác định khả năng trúng tuyển của mình vào trường đó như thế nào. Lưu ý bạn rằng cùng một ngành học nhưng có thể thi đầu vào bằng nhiều khối khác nhau. Hãy chọn thi khối nào là sở trường của bạn. Tự đánh giá khả năng của bản thân qua những bài giải  đề thi các năm trước. Tham khảo sự đánh giá của người thân, bạn bè, Thầy cô về năng lực và khả năng của mình. Trên cơ sở đó bạn tự ước lượng và đánh giá năng lực bản thân, từ đó chọn ngành học, trường thi cho phù hợp với năng lực của mình.",
                style: TextStyle(
                  fontSize: 18.0,
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
                "                                                                                 ",
                style: TextStyle(
                  fontSize: 18.0,
                )),
          ),
        ]),
      ),
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
