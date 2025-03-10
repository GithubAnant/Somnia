import 'package:flutter/material.dart';
import 'package:somnia/home_page.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({super.key, required this.buttonName, required this.buttonColor, required this.destination});

  final String buttonName;
  final Color buttonColor;
  final Widget destination;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: buttonColor),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(3), bottomRight: Radius.circular(3))
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.transparent)
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
        },
        child: Text(buttonName, style: TextStyle(color: buttonColor)),
      ),
    );
  }
}
