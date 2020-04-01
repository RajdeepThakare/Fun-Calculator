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
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 180,
              child: GradientCard(
                gradient: LinearGradient(colors: [Colors.brown, Colors.brown]),
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
                            SizedBox(width: 25),
                            Text(
                              "CALCULATE LOVE",
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
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
              height: 180,
              child: GradientCard(
                gradient: LinearGradient(
                    colors: [Colors.brown, Colors.brown]),
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
                              color: Colors.purpleAccent,
                              size: 50,
                            ),
                            SizedBox(width: 25),
                            Text(
                              "CALCULATE AGE",
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
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
              height: 180,
              child: GradientCard(
                gradient: LinearGradient(
                    colors: [Colors.brown, Colors.brown]),
                elevation: 10,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.black,
                    onTap: () {
                      Navigator.pushNamed(context, '/friendship');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 25),
                            Icon(
                              Icons.thumbs_up_down,
                              color: Colors.lightBlueAccent,
                              size: 50,
                            ),
                            SizedBox(width: 25),
                            Text(
                              "CALC FRIENDSHIP",
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
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
              height: 180,
              child: GradientCard(
                gradient: LinearGradient(
                    colors: [Colors.brown, Colors.brown]),
                elevation: 10,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.black,
                    onTap: () {
                      Navigator.pushNamed(context, '/hateness');
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 25),
                            Icon(
                              Icons.face,
                              color: Colors.orangeAccent,
                              size: 50,
                            ),
                            SizedBox(width: 25),
                            Text(
                              "CALC HATENESS",
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
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
