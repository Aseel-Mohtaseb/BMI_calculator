import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {

  final bool isFemale;
  final int age;
  final double result;

  BMIResultScreen({required this.isFemale, required this.age, required this.result});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender: ${isFemale? 'Female' : 'Male'}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'Age: $age',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'Result: ${result.round()}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    );
  }
}
