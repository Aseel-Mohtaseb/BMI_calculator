import 'dart:math';

import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isFemale = true;
  double height = 156;
  int weight = 46;
  int age = 23;

  var backgroundColor = Colors.white70;
  var containersBackgroundColor = Colors.grey[400];
  var selectedColor = Colors.pinkAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor: selectedColor,
          centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(color: backgroundColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        isFemale = true;
                        print(isFemale);
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: containersBackgroundColor,
                            borderRadius: BorderRadius.circular(15),
                            border: isFemale
                                ? Border.all(
                                    width: 6,
                                    color: selectedColor,
                                  )
                                : null),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, size: 60),
                            Text(
                              'Female',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        isFemale = false;
                        print(isFemale);
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: containersBackgroundColor,
                            borderRadius: BorderRadius.circular(15),
                            border: !isFemale
                                ? Border.all(
                                    width: 6,
                                    color: selectedColor,
                                  )
                                : null),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 60),
                            Text(
                              'Male',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: backgroundColor),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: containersBackgroundColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  const Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${height.round()}',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'CM',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    min: 80,
                    max: 240,
                    onChanged: (value) {
                      setState(() {});
                      height = value;
                    },
                    activeColor: selectedColor,
                  )
                ],
              ),
            ),
          )),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: backgroundColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        color: containersBackgroundColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$weight',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w800),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: selectedColor,
                              mini: true,
                              child: Icon(Icons.remove),
                              onPressed: () {
                                weight--;
                                setState(() {});
                              },
                              heroTag: 'weight+',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: selectedColor,
                              mini: true,
                              child: Icon(Icons.add),
                              onPressed: () {
                                weight++;
                                setState(() {});
                              },
                              heroTag: 'weight-',
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        color: containersBackgroundColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '$age',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w800),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: selectedColor,
                              mini: true,
                              child: Icon(Icons.remove),
                              onPressed: () {
                                age--;
                                setState(() {});
                              },
                              heroTag: 'age-',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: selectedColor,
                              mini: true,
                              child: Icon(Icons.add),
                              onPressed: () {
                                age++;
                                setState(() {});
                              },
                              heroTag: 'age+',
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          Container(
            width: double.infinity,
            color: selectedColor,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                print(result);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResultScreen(
                              isFemale: isFemale,
                              age: age,
                              result: result,
                            )));
              },
              child: Text(
                'calculate',
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
          )
        ],
      ),
    );
  }
}
