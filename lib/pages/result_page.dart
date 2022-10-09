import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  static const String routeName = '/result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Body Mass Index (BMI) Calculator'),
      ),
      body: Column(
        children: [
          CircularPercentIndicator(
            percent: 0.8,
            radius: 90,
            lineWidth: 25,
            header: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your BMI is',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            animation: true,
            progressColor: Theme.of(context).primaryColor,
            backgroundColor: Color(0xFFF1F4F8),
            center: Text(
              '80.24 kg/m²',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Theme.of(context).primaryColor,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You are',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 8, right: 8, bottom: 8),
                  child: Text(
                    'Normal',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                title: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                trailing: Text(
                  'BMI (kg/m²)',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
