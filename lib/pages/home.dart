import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FUN CALCULATOR"),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 100,
              child: GradientCard(
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.lightGreenAccent]),
                elevation: 10,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.black,
                    onTap: () {
                      Navigator.pushNamed(context, '/love');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 25),
                            Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            SizedBox(width: 40),
                            Text(
                              "CALCULATE LOVE",
                              style: TextStyle(fontSize: 28),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              child: GradientCard(
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.lightGreenAccent]),
                elevation: 10,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.black,
                    onTap: () {
                      Navigator.pushNamed(context, '/age');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 25),
                            Icon(
                              Icons.assignment_ind,
                              color: Colors.redAccent,
                              size: 50,
                            ),
                            SizedBox(width: 40),
                            Text(
                              "CALCULATE AGE",
                              style: TextStyle(fontSize: 28),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
