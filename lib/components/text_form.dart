import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm(
      {this.color, this.text, this.obscure, this.keyboardType, this.onChanged});

  final Color color;
  final String text;
  final bool obscure;
  final TextInputType keyboardType;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        onChanged: onChanged,
        keyboardType: keyboardType,
        obscureText: obscure,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: text,
          contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 3.0),
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
        ),
      ),
    );
  }
}
