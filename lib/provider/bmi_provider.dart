import 'package:bmi_calculator/pages/home_page.dart';
import 'package:flutter/material.dart';

class BmiProvider extends ChangeNotifier{

  TextEditingController weightControler = TextEditingController();
  TextEditingController feetControler = TextEditingController();
  TextEditingController inchControler = TextEditingController();

  clearField(){
    weightControler.clear();
    feetControler.clear();
    inchControler.clear();
    notifyListeners();
  }

  double bmi = 0.0;

  bmiCalculation(){
    var weight = double.parse(weightControler.text);
    var feet = double.parse(feetControler.text);
    var inch = double.parse(inchControler.text);
    var meter = (feet * 0.3048) + (inch * 0.0254);
    bmi = (weight) / (meter * meter);
    notifyListeners();
  }

  }

