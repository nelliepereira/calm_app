import 'package:calm_app/homepage.dart';
import 'package:calm_app/main.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(mainpg());
}

class mainpg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calmapp1(),
    );
  }
}