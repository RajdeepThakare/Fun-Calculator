import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class Hateness extends StatefulWidget {
  @override
  _HatenessState createState() => _HatenessState();
}

class _HatenessState extends State<Hateness> {
  String firstName, secondName;
  String percentage = '';

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void calHateness() {
    setState(() {
      if (t1.text.isNotEmpty && t2.text.isNotEmpty) {
        firstName = t1.text;
        secondName = t2.text;

        int sum1 = sumCalc(firstName);
        int sum2 = sumCalc(secondName);

        int totalSum = sum1 + sum2;
        totalSum = totalSum % 9 + 3;
        totalSum = totalSum * 9 + 1;

        percentage = totalSum.toString() + '%';
      }
    });
  }

  int sumCalc(String s) {
    int sum = 0;
    for (int i = 0; i < s.length; i++) {
      sum = sum + s.codeUnitAt(i);
    }
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATE HATENESS"),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(10,10,10,10),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.width * 0.5,
                    child: GradientCard(
                      gradient: LinearGradient(
                        colors: [Colors.brown[400], Colors.brown],
                      ),
                      elevation: 20,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        child: Center(
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 7),
                              Icon(
                                Icons.face,
                                color: Colors.deepOrange,
                                size: 150,
                              ),
                              SizedBox(width: 5),
                              Text(
                                ":$percentage",
                                style: TextStyle(
                                  fontSize: 55,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.050000),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter your name here",
                      border: OutlineInputBorder(),
                    ),
                    controller: t1,
                  ),
                  //SizedBox(height: 1),
                  Icon(
                    Icons.swap_calls,
                    color: Colors.red,
                    size: 100,
                  ),
                  //SizedBox(height: 1),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter name of your enemy",
                      border: OutlineInputBorder(),
                    ),
                    controller: t2,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.07),
                  ButtonTheme(
                     minWidth: MediaQuery.of(context).size.width * 0.060000,
                  height: MediaQuery.of(context).size.height * 0.090000000,
                    child: RaisedButton(
                      elevation: 10,
                      onPressed: calHateness,
                      child: Text(
                        "CALCULATE",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
