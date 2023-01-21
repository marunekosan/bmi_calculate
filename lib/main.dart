import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiCalculate(),
    );
  }
}

class BmiCalculate extends StatefulWidget {
  const BmiCalculate({super.key});

  @override
  State<BmiCalculate> createState() => _BmiCalculateState();
}

class _BmiCalculateState extends State<BmiCalculate> {
  double height = 0.0;
  double weight = 0.0;
  String bmi = '0.0';
  String appropriateBmi = '0.0';

  void calculateBmi(height, weight){
    bmi = ( weight / pow(height/100, 2) ).toStringAsFixed(1);
  }
  //適正体重
  void calculateAppropriateWeight(height, weight){
    appropriateBmi = ( pow(height/100, 2) * 22).toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI計算機")
      ),
      floatingActionButton: Container(
        margin:EdgeInsets.only(bottom: 50.0),
          child: FloatingActionButton.extended(
            label: Text('BMI?'),
            // icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextPage()),
              );
            },
          ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "BMI:$bmi",
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            Text(
              "適正体重:$appropriateBmi",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            SizedBox(
              height:64,   
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "身長",
                hintText: 'cm',
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              onChanged: (text){
                height = double.parse(text);
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "体重",
                hintText: 'kg',
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              onChanged: (text){
                weight = double.parse(text);
              },
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'error';
              }
              return null;
            },
            ),
            SizedBox(
              height: 32,   
            ),
            ElevatedButton(
              child: Text(
                '計算',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              onPressed: () {
                if(height != 0.0 && weight != 0.0){
                  calculateBmi(height, weight);
                  calculateAppropriateWeight(height, weight);
                }else{

                }
                setState(() {});
              },
            ),
          ]
        ),
      ),
    );
  }
}