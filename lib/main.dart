import 'dart:js';

import 'package:bmi_calculator/pages/home_page.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: ResultPage.routeName,
    routes: {
      HomePage.routeName: (context) => HomePage(),
      ResultPage.routeName: (context) => ResultPage(),
    },
  ));
}