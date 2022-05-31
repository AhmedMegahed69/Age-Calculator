// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Text_field extends StatelessWidget {
  Color bla = Colors.black;
  Color whi = Colors.white;
  String data;
  String datahint;
  TextEditingController s;

  Text_field(this.data, this.datahint, this.s);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 110,
      margin: EdgeInsets.all(5.0),
      child: TextField(
        textAlign: TextAlign.center,
        cursorColor: whi,
        style: TextStyle(color: whi),
        keyboardType: TextInputType.number,
        controller: s,
        decoration: InputDecoration(
            fillColor: bla.withOpacity(.6),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(600),
            ),
            labelText: data,
            labelStyle: TextStyle(fontSize: 17.0, color: Colors.white),
            hintText: datahint,
            hintStyle: TextStyle(fontSize: 15, color: whi)),
      ),
    );
  }
}
