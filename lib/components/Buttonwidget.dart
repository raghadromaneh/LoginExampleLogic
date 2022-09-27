import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({this.ButtonTitle, required this.OnPressing});
  String? ButtonTitle;
  Function() OnPressing;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        fillColor: Color.fromARGB(255, 14, 148, 137),
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        onPressed: OnPressing,
        child: Text(
          '$ButtonTitle',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
