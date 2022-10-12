import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/provider/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/home';

  Widget build(BuildContext context) {
    final provider = Provider.of<BmiProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Body Mass Index (BMI) Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Weight in kg',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                  child: SizedBox(
                    height: 51,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: provider.weightControler,
                      decoration: InputDecoration(
                        hintText: 'Enter weight',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                child: Container(
                  height: 51,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    color: Colors.grey,
                  ),
                  child: Center(child: Text('kg')),
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
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Height in feet + Inch',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                  child: SizedBox(
                    height: 51,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: provider.feetControler,
                      decoration: InputDecoration(
                        hintText: 'Enter feet',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                child: Container(
                  height: 51,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    color: Colors.grey,
                  ),
                  child: Center(child: Text('feet')),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                  child: SizedBox(
                    height: 51,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: provider.inchControler,
                      decoration: InputDecoration(
                        hintText: 'Enter inch',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomLeft: Radius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                child: Container(
                  height: 51,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    color: Colors.grey,
                  ),
                  child: Center(child: Text('inch')),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () {
                    provider.bmiCalculation();
                    Navigator.pushNamed(context, ResultPage.routeName);
                  },
                  child: Text(
                    'Calculate',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    provider.clearField();
                  },
                  child: Text(
                    'Clear',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
