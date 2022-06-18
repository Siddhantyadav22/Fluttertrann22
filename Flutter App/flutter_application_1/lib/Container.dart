// ignore_for_file: prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        // appBar: AppBar(title: Text("Widget Fundamentals")),
        body: SafeArea(
            child: Center(
      child: Container(
        color: Colors.blue,
        width: 350,
        height: 350,
        child: Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('images/googleLogo.png'),
              width: 200,
              height: 100,
            )),
      ),
    ))),
  ));
}