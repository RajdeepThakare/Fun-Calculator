import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class Love extends StatefulWidget {
  @override
  _LoveState createState() => _LoveState();
}

class _LoveState extends State<Love> {
  String firstName, secondName;
  String percentage = '';

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void calLove() {
    setState(() {
      if (t1.text.isNotEmpty && t2.text.isNotEmpty) {
        firstName = t1.text;
        secondName = t2.text;

        int sum1 = sumCalc(firstName);
        int sum2 = sumCalc(secondName);

        int totalSum = sum1 + sum2;
        totalSum = totalSum % 9;
        totalSum = totalSum * 9;

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
        title: Text("CALCULATE LOVE"),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: ListView(
        children: <Widget>[
               Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.width * 0.4,
                  //height: 150,
                  child: GradientCard(
                    gradient: LinearGradient(
                      colors: [Color(0xFF53E0BC), Colors.yellow],
                    ),
                    elevation: 20,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            //SizedBox(width: 10),
                            Expanded(
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 130,
                              ),
                            ),
                            //SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                ": $percentage",
                                style: TextStyle(fontSize: 60),
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
                    hintText: "Enter Your Name",
                    border: OutlineInputBorder(),
                  ),
                  controller: t1,
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.020000),
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 40,
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.020000),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Enter Name of Your Partner",
                    border: OutlineInputBorder(),
                  ),
                  controller: t2,
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.080000),
                ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width * 0.060000,
                  height: MediaQuery.of(context).size.height * 0.090000000,
                  child: RaisedButton(
                    elevation: 10,
                    onPressed: calLove,
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
