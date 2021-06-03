import 'dart:core';

import 'package:danangud/service/auth.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'HomeRegister.dart';

// ignore: camel_case_types
class xetTuyenThangPage extends StatefulWidget {
  final Function toggleView;

  xetTuyenThangPage({this.toggleView});

  @override
  _xetTuyenThangPageState createState() => _xetTuyenThangPageState();
}

enum GioiTinh { Nam, Nu }
enum GiaiThuong { GiaiNhat, GiaiNhi, GiaiBa, GiaiKhuyenKhich }
enum Cuocthi { QuocGia, KiThuat }

class _xetTuyenThangPageState extends State<xetTuyenThangPage> {
  final AuthService _auth = AuthService();

  final _name = TextEditingController();
  final _middlename = TextEditingController();
  final _surname = TextEditingController();
  final _dayofbirth = TextEditingController();
  final _phone = TextEditingController();
  final _namdoatgiai = TextEditingController();
  final _email = TextEditingController();
  final _tenmondoatgiai = TextEditingController();
  final _diachi = TextEditingController();
  TextEditingController dateCtl = TextEditingController();

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
  String namdoatgiai = '';
  String tenmondoatgiai = '';
  String nganh = '';
  String error = '';

  GioiTinh _gioitinh = GioiTinh.Nam;
  GiaiThuong _giaithuong = null;
  Cuocthi _cuocthi =null;

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
  List<DropdownMenuItem<String>> _dropdownMenuItemsTruong;
  String _truong;

  List<DropdownMenuItem<String>> _dropdownMenuItemsTinh;
  String _tinh;
  List<DropdownMenuItem<String>> _dropdownMenuItemsNganh;
  String _nganh;

  void initState() {
    super.initState();
    _dropdownMenuItemsTinh = buildDropDownMenuItems(_dropdownItemsTinh);
    _tinh = _dropdownMenuItemsTinh[0].value;
    _dropdownMenuItemsTruong = buildDropDownMenuItems(_dropdownItemsTruong);
    _truong = _dropdownMenuItemsTruong[0].value;
    _dropdownMenuItemsNganh = buildDropDownMenuItems(_dropdownItemsNganh);
    _nganh = _dropdownMenuItemsNganh[0].value;
  }

  List<DropdownMenuItem<String>> buildDropDownMenuItems(List listItems) {
    // ignore: deprecated_member_use
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
        title: Text('ĐĂNG KÝ XÉT TUYỂN THẲNG', textAlign: TextAlign.center),
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
                          keyboardType: TextInputType.number,
                          obscureText: false,
                          controller: _phone,
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
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: GestureDetector(
                      child: Text(
                        'Đạt giải',
                        style: TextStyle(
                            color: Color(0xFF090D10),
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                child: Container(
                    height: 250,
                    width: double.infinity,
                    child: Column(children: [
                      RadioListTile<GiaiThuong>(
                        title: const Text('Giải Nhất '),
                        value: GiaiThuong.GiaiNhat,
                        groupValue: _giaithuong,
                        onChanged: (GiaiThuong value) {
                          setState(() {
                            _giaithuong = GiaiThuong.GiaiNhat;
                            giaithuong = value.toString();
                          });
                        },
                      ),
                      RadioListTile<GiaiThuong>(
                        title: const Text('Giải Nhì '),
                        value: GiaiThuong.GiaiNhi,
                        groupValue: _giaithuong,
                        onChanged: (GiaiThuong value) {
                          setState(() {
                            _giaithuong = GiaiThuong.GiaiNhi;
                            giaithuong = value.toString();
                          });
                        },
                      ),
                      RadioListTile<GiaiThuong>(
                        title: const Text('Giải Ba '),
                        value: GiaiThuong.GiaiBa,
                        groupValue: _giaithuong,
                        onChanged: (GiaiThuong value) {
                          setState(() {
                            _giaithuong = GiaiThuong.GiaiBa;
                            giaithuong = value.toString();
                          });
                        },
                      ),
                      RadioListTile<GiaiThuong>(
                        title: const Text('Giải Khuyến Khích '),
                        value: GiaiThuong.GiaiKhuyenKhich,
                        groupValue: _giaithuong,
                        onChanged: (GiaiThuong value) {
                          setState(() {
                            _giaithuong = GiaiThuong.GiaiKhuyenKhich;
                            giaithuong = value.toString();
                          });
                        },
                      ),
                    ])),
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: GestureDetector(
                      child: Text(
                        'Cuộc thi ',
                        style: TextStyle(
                            color: Color(0xFF090D10),
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),

              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                child: Container(
                    height: 150,
                    width: double.infinity,
                    child: Column(children: [
                      RadioListTile<Cuocthi>(
                        title: const Text('Kỳ thi chọn Học sinh giỏi quốc gia'),
                        value: Cuocthi.QuocGia,
                        groupValue: _cuocthi,
                        onChanged: (Cuocthi value) {
                          setState(() {
                            _cuocthi = Cuocthi.QuocGia;
                            cuocthi = value.toString();
                          });
                        },
                      ),
                      RadioListTile<Cuocthi>(
                        title: const Text('Cuộc thi khoa học kĩ thuật '),
                        value: Cuocthi.KiThuat,
                        groupValue: _cuocthi,
                        onChanged: (Cuocthi value) {
                          setState(() {
                            _cuocthi = Cuocthi.KiThuat;
                            cuocthi = value.toString();
                          });
                        },
                      ),
                    ])),
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
                    keyboardType: TextInputType.number,
                    validator: (val) =>
                        val.length < 2 ? 'Hãy nhập năm đoạt giải' : null,
                    onChanged: (val) {
                      setState(() => namdoatgiai = val);
                    },
                    obscureText: false,
                    controller: _namdoatgiai,
                    decoration: InputDecoration(
                      hintText: 'Năm đoạt giải',
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    ),
                  ),
                ),
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
                        val.length < 2 ? 'Hãy nhập môn đoạt giải' : null,
                    onChanged: (val) {
                      setState(() => tenmondoatgiai = val);
                    },
                    obscureText: false,
                    controller: _tenmondoatgiai,
                    decoration: InputDecoration(
                      hintText: 'Môn học đoạt giải',
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4, left: 20, right: 20),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: _nganh,
                          items: _dropdownMenuItemsNganh,
                          onChanged: (value) {
                            setState(() {
                              _nganh = value;
                              nganh = value;
                            });
                          }),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: InkWell(
                    onTap: () async {
                      if (_formKey.currentState.validate()) {
                        if (_formKey.currentState.validate()) {
                          _auth
                              .tuyenThang(
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
                                  giaithuong,
                                  namdoatgiai,
                                  cuocthi,
                                  tenmondoatgiai,
                                  nganh)
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
