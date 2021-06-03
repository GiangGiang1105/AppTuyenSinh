import 'package:danangud/KVNX.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'HomeRegister.dart';

class NganhPage extends StatelessWidget {
  NganhPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Trường Đại học Bách khoa ",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510202')),
                      DataCell(Text('Công nghệ chế tạo máy')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520201')),
                      DataCell(Text('Kỹ thuật điện')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520207')),
                      DataCell(Text('Kỹ thuật điện tử - viễn thông')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7580201')),
                      DataCell(Text('Kỹ thuật xây dựng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7580202')),
                      DataCell(Text('Kỹ thuật xây dựng công trình thuỷ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7580205	')),
                      DataCell(Text('Kỹ thuật xây dựng công trình giao thông')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520115')),
                      DataCell(Text('Kỹ thuật nhiệt')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520103')),
                      DataCell(Text('Kỹ thuật cơ khí')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7540101')),
                      DataCell(Text('Công nghệ thực phẩm')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510701')),
                      DataCell(Text('Công nghệ dầu khí và khai thác dầu')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480201')),
                      DataCell(Text('Công nghệ thông tin')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520114')),
                      DataCell(Text('Kỹ thuật cơ - điện tử')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7580301')),
                      DataCell(Text('Kinh tế xây dựng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7580101')),
                      DataCell(Text('Kiến trúc')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7420201')),
                      DataCell(Text('Công nghệ Sinh học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520301')),
                      DataCell(Text('Kỹ thuật hóa học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510105')),
                      DataCell(Text('Công nghệ kỹ thuật vật liệu xây dựng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520320')),
                      DataCell(Text('Kỹ thuật môi trường')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520122')),
                      DataCell(Text('Kỹ thuật tàu thủy')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7850101')),
                      DataCell(Text('Quản lý tài nguyên & môi trường')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510601')),
                      DataCell(Text('Quản lý công nghiệp')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520216')),
                      DataCell(Text('Kỹ thuật điều khiển và tự động hóa')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520118')),
                      DataCell(Text('Kỹ thuật hệ thống công nghiệp')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7580210')),
                      DataCell(Text('Kỹ thuật cơ sở hạ tầng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480106')),
                      DataCell(Text('Kỹ thuật máy tính')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                  "Chương trình đào tạo Kỹ sư chất lượng cao Việt - Pháp",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('PFIEV')),
                      DataCell(Text('Kỹ thuật điện, điện tử')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('PFIEV')),
                      DataCell(Text('Kỹ thuật cơ khí')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('PFIEV')),
                      DataCell(Text('Công nghệ thông tin')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 10.0),
              child: Text("Chương trình tiên tiến",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7905206')),
                      DataCell(Text('Điện tử viễn thông')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7905216')),
                      DataCell(Text('Hệ thống nhúng')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Trường Đại học Kinh Tế ",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340301')),
                      DataCell(Text('Kế toán')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340101')),
                      DataCell(Text('Quản trị kinh doanh')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7810201')),
                      DataCell(Text('Quản trị khách sạn')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340121')),
                      DataCell(Text('Kinh doanh thương mại')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340120')),
                      DataCell(Text('Kinh doanh quốc tế')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340115')),
                      DataCell(Text('Marketing')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7460201')),
                      DataCell(Text('Thống kê kinh tế')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340405')),
                      DataCell(Text('Hệ thống thông tin quản lý')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340201')),
                      DataCell(Text('Tài chính - Ngân hàng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7310101')),
                      DataCell(Text('Kinh tế')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7380101')),
                      DataCell(Text('Luật')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340302')),
                      DataCell(Text('Kiểm toán')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340404')),
                      DataCell(Text('Quản trị nhân lực')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7380107')),
                      DataCell(Text('Luật kinh tế')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7310205')),
                      DataCell(Text('Quản lý nhà nước')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7810103')),
                      DataCell(Text('Quản trị dịch vụ, du lịch và lữ hành')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340122')),
                      DataCell(Text('Thương mại điện tử')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340420')),
                      DataCell(
                          Text('Khoa học dữ liệu và phân tích kinh doanh')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Trường Đại học Ngoại Ngữ ",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140231')),
                      DataCell(Text('Sư phạm tiếng Anh')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140232')),
                      DataCell(Text('Sư phạm tiếng Nga')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140233')),
                      DataCell(Text('Sư phạm tiếng Pháp')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140234')),
                      DataCell(Text('Sư phạm tiếng Trung Quốc')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7220201')),
                      DataCell(Text('Ngôn ngữ Anh')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7220202')),
                      DataCell(Text('Ngôn ngữ Nga')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7220203')),
                      DataCell(Text('Ngôn ngữ Pháp')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7220204')),
                      DataCell(Text('Ngôn ngữ Trung Quốc')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7220209')),
                      DataCell(Text('Ngôn ngữ Nhật')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7220210')),
                      DataCell(Text('Ngôn ngữ Hàn Quốc')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7220214')),
                      DataCell(Text('Ngôn ngữ Thái Lan')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7310601')),
                      DataCell(Text('Quốc tế học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7310608')),
                      DataCell(Text('Đông phương học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7220101')),
                      DataCell(Text('Tiếng Việt và văn hoá Việt Nam')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Trường Đại học Sư phạm ",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140209')),
                      DataCell(Text('Sư phạm Toán học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140210')),
                      DataCell(Text('Sư phạm Tin học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140211')),
                      DataCell(Text('Sư phạm Vật lí')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140212')),
                      DataCell(Text('Sư phạm Hóa học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140213')),
                      DataCell(Text('Sư phạm Sinh học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140217')),
                      DataCell(Text('Sư phạm Ngữ văn')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140218')),
                      DataCell(Text('Sư phạm Lịch sử')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140219')),
                      DataCell(Text('Sư phạm Địa lí')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140202')),
                      DataCell(Text('Giáo dục tiểu học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140201')),
                      DataCell(Text('Giáo dục mầm non')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140203')),
                      DataCell(Text('Giáo dục đặc biệt')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140205')),
                      DataCell(Text('Giáo dục chính trị')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7460112')),
                      DataCell(Text('Toán ứng dụng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480201')),
                      DataCell(Text('Công nghệ thông tin')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7460112')),
                      DataCell(Text('Toán ứng dụng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480201')),
                      DataCell(Text('Công nghệ thông tin')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7440102')),
                      DataCell(Text('Vật lí học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7440112')),
                      DataCell(Text('Hóa học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7440301')),
                      DataCell(Text('Khoa học môi trường')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7850101')),
                      DataCell(Text('Quản lí tài nguyên & MT')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7229030')),
                      DataCell(Text('Văn học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7310630')),
                      DataCell(Text('Việt Nam học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7310501')),
                      DataCell(Text('Địa lí học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7229040')),
                      DataCell(Text('Văn hóa học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7320101')),
                      DataCell(Text('Báo chí')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140114')),
                      DataCell(Text('Quản lý giáo dục')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7760101')),
                      DataCell(Text('Công tác xã hội')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7420201')),
                      DataCell(Text('Công nghệ thông tin')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7440217')),
                      DataCell(
                          Text('Địa lý tự nhiên (Trước thuộc Địa lí học)')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7229010')),
                      DataCell(Text('Lịch sử')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140221')),
                      DataCell(Text('Sư phạm âm nhạc')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140204')),
                      DataCell(Text('Giáo dục công dân')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140246')),
                      DataCell(Text('Sư phạm Công nghệ')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140247')),
                      DataCell(Text('Sư phạm Khoa học tự nhiên')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140249')),
                      DataCell(Text('Sư phạm Lịch sử-Địa lý')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Trường Đại học Sư phạm Kỹ thuật ",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510103')),
                      DataCell(Text('Công nghệ kỹ thuật xây dựng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510201')),
                      DataCell(Text('Công nghệ kỹ thuật cơ khí')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510205')),
                      DataCell(Text('Công nghệ kỹ thuật ô tô')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510301')),
                      DataCell(Text('Công nghệ kỹ thuật điện, điện tử')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510303')),
                      DataCell(
                          Text('Công nghệ kỹ thuật điều khiển và tự động hóa')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510406')),
                      DataCell(Text('Công nghệ kỹ thuật môi trường')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140214')),
                      DataCell(Text('Sư phạm kỹ thuật công nghiệp')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510206')),
                      DataCell(Text('Công nghệ kỹ thuật nhiệt')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510203')),
                      DataCell(Text('Công nghệ kỹ thuật cơ điện tử')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510302')),
                      DataCell(Text('Công nghệ kỹ thuật điện tử - viễn thông')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510402')),
                      DataCell(Text('Công nghệ vật liệu')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7540102')),
                      DataCell(Text('Kỹ thuật thực phẩm')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7420203')),
                      DataCell(Text('Sinh học ứng dụng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7510104')),
                      DataCell(Text('Công nghệ kỹ thuật giao thông')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7580210')),
                      DataCell(Text('Kỹ thuật cơ sở hạ tầng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480201')),
                      DataCell(Text('Công nghệ thông tin')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Phân hiệu Đại học Đà Nẵng tại Kon Tom",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340101')),
                      DataCell(Text('Quản trị kinh doanh')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7580301')),
                      DataCell(Text('Kinh tế xây dựng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340301')),
                      DataCell(Text('Kế toán')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7580205')),
                      DataCell(Text('Kỹ thuật xây dựng công trình giao thông')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340302')),
                      DataCell(Text('Kiểm toán')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340121')),
                      DataCell(Text('Kinh doanh thương mại')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140202')),
                      DataCell(Text('	Giáo dục tiểu học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7810103')),
                      DataCell(Text('Quản trị dịch vụ, du lịch và lữ hành')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480201')),
                      DataCell(Text('Công nghệ thông tin')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7520201')),
                      DataCell(Text('	Kỹ thuật điện')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7140209')),
                      DataCell(Text('Sư phạm Toán học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7380107')),
                      DataCell(Text('Luật kinh tế')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7620114')),
                      DataCell(Text('Kinh doanh nông nghiệp')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340201')),
                      DataCell(Text('Tài chính - Ngân hàng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7310105')),
                      DataCell(Text('Kinh tế phát triển')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7420201')),
                      DataCell(Text('Công nghệ sinh học')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7580201')),
                      DataCell(Text('Kỹ thuật xây dựng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7310205')),
                      DataCell(Text('Quản lý nhà nước')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Khoa Y Dược",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7720301')),
                      DataCell(Text('Điều dưỡng')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7720101')),
                      DataCell(Text('Y khoa')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7720501')),
                      DataCell(Text('Răng - Hàm - Mặt')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7720201')),
                      DataCell(Text('Dược học')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Viện Nghiên cứu và đào tạo Việt - Anh",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340124')),
                      DataCell(Text('Quản trị và kinh doanh quốc tế')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480204')),
                      DataCell(Text('Khoa học và kỹ thuật máy tính')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7420204')),
                      DataCell(Text('Khoa học Y sinh')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("Khoa Công nghệ thông tin và truyền thông",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480201')),
                      DataCell(Text('Công nghệ thông tin')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480108')),
                      DataCell(Text('Công nghệ kỹ thuật máy tính')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340101')),
                      DataCell(Text('Quản trị kinh doanh')),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                  "Trường Đại học Công nghệ thông tin và truyền thông Việt - Hàn",
                  style: TextStyle(
                    fontSize: 18.0,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: DataTable(
                columnSpacing: 40.0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Level',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Mã',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tên ngành',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7340101')),
                      DataCell(Text('Quản trị kinh doanh')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480108')),
                      DataCell(Text('Công nghệ kỹ thuật máy tính')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('ĐH')),
                      DataCell(Text('7480201')),
                      DataCell(Text('Công nghệ thông tin')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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
