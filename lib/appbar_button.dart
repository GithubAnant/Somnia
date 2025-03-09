import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({super.key, required this.buttonName});

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(3), bottomRight: Radius.circular(3))
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.transparent)
        ),
        onPressed: () {},
        child: Text(buttonName, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
