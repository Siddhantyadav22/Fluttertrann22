// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Siddhant Yadav"),
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 77, 94, 1),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: 
          // ignore: prefer_const_constructors
          Text(
        "Hello, I am Siddhant Yadav",
        textDirection: TextDirection.ltr,
        // ignore: prefer_const_constructors
        style: TextStyle(fontSize: 24),
        ),
      ),
    ),
  ));
}