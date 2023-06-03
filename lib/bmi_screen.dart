import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isFemale = true;
  double height = 156;
  int weight = 46;
  int age = 23;


  var color = Colors.tealAccent;

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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        isFemale = true;
                        print(isFemale);
                        setState(() {

                        });

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(15),
                          border: isFemale?  Border.all(
                            width: 6,
                            color: color,
                          ) : null
                        ),
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
                        setState(() {

                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(15),
                            border: !isFemale?  Border.all(
                              width: 6,
                              color: color,
                            ) : null

                        ),

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
            decoration: BoxDecoration(color: Colors.purple),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.purple[200],
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
                        setState(() {

                        });
                        height = value;
                      })
                ],
              ),
            ),
          )),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(color: Colors.purple),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
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
                              backgroundColor: Colors.grey,
                              mini: true,
                              child: Icon(Icons.remove),
                              onPressed: () {
                                weight--;
                                setState(() {

                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              mini: true,
                              child: Icon(Icons.add),
                              onPressed: () {
                                weight++;
                                setState(() {

                                });
                              },                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.purple[200],
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
                              backgroundColor: Colors.grey,
                              mini: true,
                              child: Icon(Icons.remove),
                              onPressed: () {
                                age--;
                                setState(() {

                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.grey,
                              mini: true,
                              child: Icon(Icons.add),
                              onPressed: () {
                                age++;
                                setState(() {

                                });
                              },
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
            color: Colors.purple,
            child: MaterialButton(
              onPressed: () {},
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
