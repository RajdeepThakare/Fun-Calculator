import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> with SingleTickerProviderStateMixin {
  double age = 0.0;
  var selectedYear;
  Animation animation;
  AnimationController animationController;

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    animation = animationController;
    super.initState();
  }

  void showPicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime(2020),
            firstDate: DateTime(1900),
            lastDate: DateTime.now())
        .then((DateTime dt) {
      setState(() {
        selectedYear = dt.year;
        calculateAge();
      });
    });
  }

  void calculateAge() {
    setState(() {
      age = (2020 - selectedYear).toDouble();
      animation = Tween<double>(begin: animation.value, end: age).animate(
          CurvedAnimation(
              parent: animationController,
              curve: Curves.fastLinearToSlowEaseIn));
    });
    animation.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATE AGE"),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                minWidth: 200,
                height: 60,
                child: OutlineButton(
                  child: Text(selectedYear != null
                      ? selectedYear.toString()
                      : "Select Your Year of Birth", style: TextStyle(fontSize: 20),),
                  borderSide: BorderSide(color: Colors.black, width: 3),
                  onPressed: showPicker,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Your Age is : ${animation.value.toStringAsFixed(0)}",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
