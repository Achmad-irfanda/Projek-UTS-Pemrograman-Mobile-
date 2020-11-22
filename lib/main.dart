import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projekuts/umum/bottombar.dart';
 
void main() {
  
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(53, 177, 149, 1),
      ),
      home:bottombar(),
    ),
  );
}

