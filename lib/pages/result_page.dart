import 'package:bmi_calculator/data/bmi_data_generator.dart';
import 'package:bmi_calculator/pages/home_page.dart';
import 'package:bmi_calculator/provider/bmi_provider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
  }) : super(key: key);

  static const String routeName = '/result';

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BmiProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Body Mass Index (BMI) Calculator'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircularPercentIndicator(
              percent: (provider.bmi / 100),
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
                '${provider.bmi.toStringAsFixed(2)} (kg/m²)',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                  'You are ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Flexible(
                  child: Text(
                    BmiDataGenerator.generateStatus(provider.bmi),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
                ...List.generate(
                  BmiDataGenerator.bmiTableMap.length,
                  (index) => ListTile(
                    title:
                        Text(BmiDataGenerator.bmiTableMap.keys.toList()[index]),
                    trailing: Text(
                        BmiDataGenerator.bmiTableMap.values.toList()[index]),
                    tileColor: BmiDataGenerator.generateStatus(provider.bmi) ==
                            BmiDataGenerator.bmiTableMap.keys.toList()[index]
                        ? Colors.blue
                        : null,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
                onPressed: () {
                  provider.clearField();
                  Navigator.pushNamed(context, HomePage.routeName);

                },
                child: Text(
                  'Calculate Again',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
