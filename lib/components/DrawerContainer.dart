import 'package:flutter/material.dart';

class DrawerContainer extends StatelessWidget {
  DrawerContainer(
      {this.ContainerIcon, this.ContainerTitle, required this.OnPressing});
  IconData? ContainerIcon;
  String? ContainerTitle;
  Function() OnPressing;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(9),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: OnPressing,
        child: Row(
          children: [
            Icon(ContainerIcon),
            SizedBox(
              width: 10,
            ),
            Text(
              "$ContainerTitle",
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 79, 77, 77),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
