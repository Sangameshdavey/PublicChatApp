import 'package:flutter/material.dart';

class roundedButton extends StatelessWidget {
  Color buttoncolor = Colors.black;
  String title;
  VoidCallback pressed;
  roundedButton(
      {required this.buttoncolor, required this.title, required this.pressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttoncolor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            pressed();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
