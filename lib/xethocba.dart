import 'dart:core';

import 'package:danangud/service/auth.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'HomeRegister.dart';

class xetHocBaPage extends StatefulWidget {
  final Function toggleView;

  xetHocBaPage({this.toggleView});

  @override
  _xetHocBaPageState createState() => _xetHocBaPageState();
}

enum GioiTinh { Nam, Nu }

class _xetHocBaPageState extends State<xetHocBaPage> {
  final AuthService _auth = AuthService();
  final _name = TextEditingController();
  final _middlename = TextEditingController();
  final _surname = TextEditingController();
  final _dayofbirth = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  final _diachi = TextEditingController();
  final _mon1 = TextEditingController();
  final _mon2 = TextEditingController();
  final _mon3 = TextEditingController();
  final _diem1 = TextEditingController();
  final _diem2 = TextEditingController();
  final _diem3 = TextEditingController();
  final _namtotnghiep = TextEditingController();
  TextEditingController dateCtl = TextEditingController();

  DateTime selectedDate;

  bool _validate = false;
  final _formKey = GlobalKey<FormState>();
  String name = ' ';
  String middlename = '';
  String surname = '';
  String ngaysinh = '';
  String giaithuong = '';
  String gioitinh = '';
  String cuocthi = '';
  String phone = ' ';
  String email = ' ';
  String address = ' ';
  String khuvuc = '';
  String uutien = '';
  String daihoc = '';
  String khoi = '';
  bool nvduhoc = false;
  String mon1 = '';
  String mon2 = '';
  String mon3 = '';
  String diem1 = '';
  String diem2 = '';
  String diem3 = '';
  bool totnghiep = false;
  String namtotnghiep = '';
  String nganh = '';
  String error = '';

  GioiTinh _gioitinh = GioiTinh.Nam;

  List<String> _dropdownItemsTinh = [
    "Tỉnh Thành",
    "Đà Nẵng",
    "TP. Hồ Chí Minh",
    "Huế",
    "Cà Mau",
    "Hà Nội",
    "Cần Thơ",
    "Hải Phòng"
  ];
  List<String> _dropdownItemsTruong = [
    "Trường THPT",
    "THPT Nguyễn Hoàng",
    "THPT Nguyễn Trãi ",
    "THPT Nguyễn THị Minh Khai",
    "THPT Nguyễn Huệ ",
    "THPT Quang Trung",
    "THPT Lê Văn Hiến ",
  ];
  List<String> _dropdownItemsNganh = [
    "Ngành",
    "Cơ-điện tử",
    "Công nghệ thông tin",
    "Kế toán",
    "Sư phạm",
    "Kinh doanh quốc tế",
    "Quản trị kinh doanh",
  ];
  List<String> _dropdownItemsKhuVuc = [
    "Khu vực",
    "Khu Vực 1",
    "Khu Vực 2",
    "Khu Vực 3",
    "Khu Vực 4",
  ];
  List<String> _dropdownItemsUuTien = [
    "0-Không ưu tiên",
    "1-Dân tộc thiểu số",
    "CNUT, CS Thi đua ",
    "Thương binh, bệnh binh, quân nhân",
    "Con liệt sĩ, thương bệnh binh nặng",
    "Quân nhân, Công an, Thanh niên xung phong",
  ];
  List<String> _dropdownItemsNhomMon = [
    "Chọn tổ hợp môn",
    "Khối A",
    "Khối B",
    "Khối C",
    "Khối D"
  ];
  List<String> _dropdownItemsDaiHoc = [
    "Trường Đại học",
    "Trường Đại học CNTT & TT Việt Hàn "
        "Trường Đại học Bách Khoa",
    "Trường Đại học Sư Sư Phạm",
    "Trường Đại học Ngoại Ngữ",
    "Trường Đại học Kinh Tế"
  ];
  List<DropdownMenuItem<String>> _dropdownMenuItemsTruong;
  String _truong;
  List<DropdownMenuItem<String>> _dropdownMenuItemsDaiHoc;
  String _daihoc;
  List<DropdownMenuItem<String>> _dropdownMenuItemsTinh;
  String _tinh;
  List<DropdownMenuItem<String>> _dropdownMenuItemsNganh;
  String _nganh;
  List<DropdownMenuItem<String>> _dropdownMenuItemsKhuVuc;
  String _khuvuc;

  List<DropdownMenuItem<String>> _dropdownMenuItemsUuTien;
  String _uutien;
  List<DropdownMenuItem<String>> _dropdownMenuItemsNhomMon;
  String _nhommon;

  void initState() {
    super.initState();
    _dropdownMenuItemsTinh = buildDropDownMenuItems(_dropdownItemsTinh);
    _tinh = _dropdownMenuItemsTinh[0].value;
    _dropdownMenuItemsTruong = buildDropDownMenuItems(_dropdownItemsTruong);
    _truong = _dropdownMenuItemsTruong[0].value;
    _dropdownMenuItemsNganh = buildDropDownMenuItems(_dropdownItemsNganh);
    _nganh = _dropdownMenuItemsNganh[0].value;
    _dropdownMenuItemsKhuVuc = buildDropDownMenuItems(_dropdownItemsKhuVuc);
    _khuvuc = _dropdownMenuItemsKhuVuc[0].value;
    _dropdownMenuItemsUuTien = buildDropDownMenuItems(_dropdownItemsUuTien);
    _uutien = _dropdownMenuItemsUuTien[0].value;
    _dropdownMenuItemsNhomMon = buildDropDownMenuItems(_dropdownItemsNhomMon);
    _nhommon = _dropdownMenuItemsNhomMon[0].value;
    _dropdownMenuItemsDaiHoc = buildDropDownMenuItems(_dropdownItemsDaiHoc);
    _daihoc = _dropdownMenuItemsDaiHoc[0].value;
  }

  List<DropdownMenuItem<String>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<String>> items = List();
    for (String listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: null,
        ),
        title: Text('ĐĂNG KÝ XÉT HỌC BẠ', textAlign: TextAlign.center),
      ),
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20.0),
                          padding: EdgeInsets.only(left: 5.0),
                          alignment: Alignment.topLeft,
                          child: Text("THÔNG TIN HỌC SINH",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xFF35A0EE),
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                        "Dựa vào kết quả học tập năm lớp 12; Lấy cột trung bình cả năm của 3 môn xét tuyển",
                        style: TextStyle(
                          color: Color(0xFF35A0EE),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
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
                        child: TextFormField(
                          validator: (val) =>
                              val.length < 2 ? 'Hãy nhập họ' : null,
                          onChanged: (val) {
                            setState(() => surname = val);
                          },
                          obscureText: false,
                          controller: _surname,
                          decoration: InputDecoration(
                            hintText: 'Họ',
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          validator: (val) =>
                              val.length < 2 ? 'Hãy nhập tên đệm' : null,
                          onChanged: (val) {
                            setState(() => middlename = val);
                          },
                          obscureText: false,
                          controller: _middlename,
                          decoration: InputDecoration(
                            hintText: 'Tên đệm',
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          validator: (val) =>
                              val.length < 2 ? 'Hãy nhập tên' : null,
                          onChanged: (val) {
                            setState(() => name = val);
                          },
                          obscureText: false,
                          controller: _name,
                          decoration: InputDecoration(
                            hintText: 'Tên ',
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ListTile(
                          title: const Text('Nam'),
                          leading: Radio(
                            value: GioiTinh.Nam,
                            groupValue: _gioitinh,
                            onChanged: (GioiTinh value) {
                              setState(() {
                                _gioitinh = value;
                                gioitinh = value.toString();
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ListTile(
                          title: const Text('Nữ'),
                          leading: Radio(
                            value: GioiTinh.Nu,
                            groupValue: _gioitinh,
                            onChanged: (GioiTinh value) {
                              setState(() {
                                _gioitinh = value;
                                gioitinh = value.toString();
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
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
                      child: DateTimePicker(
                        type: DateTimePickerType.date,
                        dateMask: 'yyyy/MM/dd',
                        controller: _dayofbirth,
                        validator: (val) =>
                            val.length < 2 ? 'Hãy nhập ngày sinh' : null,
                        decoration: InputDecoration(
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
                        onChanged: (val) => setState(() => ngaysinh = val),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          validator: (val) => val.length < 2
                              ? 'Hãy nhập số điện thoại'
                              : null,
                          onChanged: (val) {
                            setState(() => phone = val);
                          },
                          obscureText: false,
                          controller: _phone,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Số điện thoại',
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                      email = val;
                    },
                    obscureText: false,
                    controller: _email,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    ),
                  ),
                ),
              ),
              // InputFields(
              //   hinttext: 'Ngày Sinh',
              //   icon: Icons.calendar_today,
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                    validator: (val) => val.length < 2
                        ? 'Hãy nhập địa chỉ nhận giấy báo'
                        : null,
                    onChanged: (val) {
                      setState(() => address = val);
                    },
                    obscureText: false,
                    controller: _diachi,
                    decoration: InputDecoration(
                      hintText: 'Địa chỉ nhận giấy báo',
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isDense: false,
                              isExpanded: true,
                              value: _tinh,
                              items: _dropdownMenuItemsTinh,
                              onChanged: (value) {
                                setState(() {
                                  _tinh = value;
                                });
                              }),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                    child: Container(
                      height: 40,
                      width: 155,
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isDense: false,
                              isExpanded: true,
                              value: _truong,
                              items: _dropdownMenuItemsTruong,
                              onChanged: (value) {
                                setState(() {
                                  _truong = value;
                                });
                              }),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, left: 20),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isDense: false,
                              isExpanded: true,
                              value: _khuvuc,
                              items: _dropdownMenuItemsKhuVuc,
                              onChanged: (value) {
                                setState(() {
                                  _khuvuc = value;
                                  khuvuc = _khuvuc;
                                });
                              }),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                    child: Container(
                      height: 40,
                      width: 155,
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, left: 20),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isDense: false,
                              isExpanded: true,
                              value: _uutien,
                              items: _dropdownMenuItemsUuTien,
                              onChanged: (value) {
                                setState(() {
                                  _uutien = value;
                                  uutien = _uutien;
                                });
                              }),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("THÔNG TIN ĐĂNG KÝ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF35A0EE),
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isDense: false,
                              isExpanded: true,
                              value: _daihoc,
                              items: _dropdownMenuItemsDaiHoc,
                              onChanged: (value) {
                                setState(() {
                                  _daihoc = value;
                                  daihoc = _daihoc;
                                });
                              }),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                    child: Container(
                      height: 40,
                      width: 155,
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isDense: false,
                              isExpanded: true,
                              value: _nganh,
                              items: _dropdownMenuItemsNganh,
                              onChanged: (value) {
                                setState(() {
                                  _nganh = value;
                                  nganh = _nganh;
                                });
                              }),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Ghi chú: Thí sinh được phép chuyển đổi ngành phù hợp sau 1 Học kỳ đến 1 Năm học theo quy chế của Bộ Giáo dục và Đào tạo",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, left: 30),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                              isDense: false,
                              isExpanded: true,
                              value: _nhommon,
                              items: _dropdownMenuItemsNhomMon,
                              onChanged: (value) {
                                setState(() {
                                  _nhommon = value;
                                  khoi = _nhommon;
                                });
                              }),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                    child: Container(
                      height: 40,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: Checkbox(
                          value: nvduhoc,
                          onChanged: (value) {
                            setState(() {
                              nvduhoc = !nvduhoc;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Text('NV du học',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                        height: 40,
                        width: 155,
                        child: Text(
                          'Tổ hợp môn Xét tuyển',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                    child: Container(
                        height: 40,
                        width: 155,
                        child: Text(
                          'Điểm trung bình cả năm lớp 12',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: TextFormField(
                        validator: (val) =>
                            val.length < 2 ? 'Hãy nhập tên môn ' : null,
                        onChanged: (val) {
                          mon1 = val;
                        },
                        obscureText: false,
                        controller: _mon1,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          validator: (val) => val.length < 2
                              ? 'Hãy nhập điểm trung bình các môn'
                              : null,
                          onChanged: (val) {
                            setState(() => diem1 = val);
                          },
                          obscureText: false,
                          controller: _diem1,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "0.0",
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: TextFormField(
                        validator: (val) =>
                            val.length < 2 ? 'Hãy nhập tên môn ' : null,
                        onChanged: (val) {
                          mon2 = val;
                        },
                        obscureText: false,
                        controller: _mon2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          validator: (val) => val.length < 2
                              ? 'Hãy nhập điểm trung bình các môn'
                              : null,
                          onChanged: (val) {
                            setState(() => diem2 = val);
                          },
                          textAlign: TextAlign.center,
                          obscureText: false,
                          controller: _diem2,
                          decoration: InputDecoration(
                            hintText: "0.0",
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: TextFormField(
                        validator: (val) =>
                            val.length < 2 ? 'Hãy nhập tên môn ' : null,
                        onChanged: (val) {
                          mon3 = val;
                        },
                        obscureText: false,
                        controller: _mon3,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 12),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          validator: (val) => val.length < 2
                              ? 'Hãy nhập điểm trung bình các môn'
                              : null,
                          onChanged: (val) {
                            setState(() => diem3 = val);
                          },
                          textAlign: TextAlign.center,
                          obscureText: false,
                          controller: _diem3,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "0.0",
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                    child: Container(
                      height: 40,
                      width: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: Checkbox(
                          value: totnghiep,
                          onChanged: (value) {
                            setState(() {
                              totnghiep = !totnghiep;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                    child: Container(
                      height: 40,
                      width: 125,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: Text('Đã tốt nghiệp THPT',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 3,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          validator: (val) => val.length < 2
                              ? 'Hãy nhập năm tốt nghiệp'
                              : null,
                          onChanged: (val) {
                            setState(() => namtotnghiep = val);
                          },
                          keyboardType: TextInputType.number,
                          obscureText: false,
                          controller: _namtotnghiep,
                          decoration: InputDecoration(
                            hintText: 'Năm tốt nghiệp',
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "(Nhấp vào ô này nếu bạn đã tốt nghiệp THPT)",
                        style: TextStyle(color: Colors.black38),
                        textAlign: TextAlign.center,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: InkWell(
                    onTap: () async {
                      if (_formKey.currentState.validate()) {
                        var status = await _auth
                            .tuyenHocBa(
                                surname,
                                middlename,
                                name,
                                gioitinh,
                                ngaysinh,
                                email,
                                phone,
                                address,
                                _tinh,
                                _truong,
                                nganh,
                                khuvuc,
                                uutien,
                                daihoc,
                                khoi,
                                nvduhoc,
                                mon1,
                                mon2,
                                mon3,
                                diem1,
                                diem2,
                                diem3,
                                totnghiep,
                                namtotnghiep)
                            .then((value) {
                          Fluttertoast.showToast(
                              msg: "Đăng ký xét tuyển thành công!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.blueAccent,
                              textColor: Colors.black45,
                              fontSize: 16.0);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homeRegisterPage()),
                          );
                        }).onError((error, stackTrace) {
                          Fluttertoast.showToast(
                              msg: "Đăng ký xét tuyển không thành công!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.blueAccent,
                              textColor: Colors.black45,
                              fontSize: 16.0);
                        });
                      }
                    },
                    child: Container(
                      height: 40,
                      width: 160,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [Color(0xFFBD0F29), Color(0xFFEE3551)]),
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
                          'Đăng kí xét tuyển ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
