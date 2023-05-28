import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          backgroundColor: Colors.purple,
          centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.purple),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Icon(Icons.female, size: 60),
                        Text(
                          'Female',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Icon(Icons.female, size: 60),
                        Text(
                          'Female',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Row()),
          Expanded(child: Row()),
          Container(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text('calculate')),
          )
        ],
      ),
    );
  }
}
