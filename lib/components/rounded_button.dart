import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.color, this.title, this.onPressed, this.borderColor});

  final Color color;
  final String title;
  final Function onPressed;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        style: OutlinedButton.styleFrom(
            minimumSize: Size(200, 42),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            side: BorderSide(width: 0.5, color: borderColor),
            elevation: 5.0,
            backgroundColor: color),
        // style: ButtonStyle(
        //   minimumSize: MaterialStateProperty.all<Size>(
        //     Size(200, 42),
        //   ),
        //   shape: MaterialStateProperty<OutlinedBorder>(
        //     CircleBorder(side: BorderSide()),
        //   ),
        // ),
      ),
    );
  }
}
