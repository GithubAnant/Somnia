import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
    required this.buttonName,
    required this.buttonColor,
    required this.destination,
    required this.isActive,
  });

  final String buttonName;
  final Color buttonColor;
  final Widget destination;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: buttonColor),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(3), bottomRight: Radius.circular(3)),
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.transparent)),
        onPressed: isActive 
            ? null // Disable button for active tab
            : () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => destination),
              ),
        child: Text(
          buttonName,
          style: TextStyle(color: buttonColor),
        ),
      ),
    );
  }
}