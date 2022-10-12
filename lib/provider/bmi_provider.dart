import 'package:bmi_calculator/pages/home_page.dart';
import 'package:flutter/material.dart';
//
class BmiProvider extends ChangeNotifier{
//   var weight = HomePage.weightControler.text;
//   // var feet = double.parse(HomePage.feetControler.text);
//   // var inch = double.parse(HomePage.inchControler.text);
//   // var bmi = 0.0;
//   //
//   // late var meter = (feet * 0.3048) + (inch * 0.0254);
//   var weight1 = '';
//
//   bmiCalculate(){
//     // var bmi = (weight) / (meter * meter);
//     weight1 = weight;
//     print(weight1);
//     notifyListeners();
//   }
    TextEditingController weightController = TextEditingController();
    TextEditingController feetController = TextEditingController();
    TextEditingController inchController = TextEditingController();
  void notifyListeners();
  }

