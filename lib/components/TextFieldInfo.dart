import 'package:flutter/material.dart';

final myController = TextEditingController();

class InfoTextField extends StatelessWidget {
  InfoTextField({this.HintBox, this.ObscureText});
  bool? ObscureText;
  String? HintBox;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 300),
      child: TextField(
        controller: myController,
        obscureText: ObscureText!,
        maxLines: 1,
        style: TextStyle(color: Colors.black, fontSize: 18),
        decoration: InputDecoration(
          hintText: '$HintBox',
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 90, 117, 128),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 90, 117, 128),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 90, 117, 128),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}
