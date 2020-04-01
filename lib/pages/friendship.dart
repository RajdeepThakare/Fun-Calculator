import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class Friendship extends StatefulWidget {
  @override
  _FriendshipState createState() => _FriendshipState();
}

class _FriendshipState extends State<Friendship> {
  String firstName, secondName;
  String percentage = '';

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void calFriendship() {
    setState(() {
      if (t1.text.isNotEmpty && t2.text.isNotEmpty) {
        firstName = t1.text;
        secondName = t2.text;

        int sum1 = sumCalc(firstName);
        int sum2 = sumCalc(secondName);

        int totalSum = sum1 + sum2;
        totalSum = totalSum % 9 + 2;
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
        title: Text("CALCULATE FRIENDSHIP"),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: GradientCard(
                      gradient: LinearGradient(
                        colors: [Colors.greenAccent, Colors.lightBlueAccent],
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
                                  Icons.thumbs_up_down,
                                  color: Colors.pinkAccent,
                                  size: 150,
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
                  SizedBox(height: 50),
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
                    Icons.swap_vert,
                    color: Colors.cyan,
                    size: 100,
                  ),
                  //SizedBox(height: 1),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter your friend's name",
                      border: OutlineInputBorder(),
                    ),
                    controller: t2,
                  ),
                  SizedBox(height: 50),
                  ButtonTheme(
                    minWidth: 200,
                    height: 60,
                    child: RaisedButton(
                      elevation: 10,
                      onPressed: calFriendship,
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
