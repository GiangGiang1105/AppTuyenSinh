import 'package:flutter/material.dart';
class InputFields extends StatelessWidget {
  String hinttext;
  IconData icon;
  String _valueText;
  InputFields({this.hinttext, this.icon});
  String get valueText {
    return _valueText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0,2),
                blurRadius: 3,
              ),
            ]
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            prefixIcon: Icon(icon),
          ),
          // onChanged: (text) {
          //   _valueText = text;
          // },
        ),
      ),
    );
  }
}
