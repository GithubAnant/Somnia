import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  void nothing() {}

  final double radiusButton = 6;
  final Color buttonColor = const Color.fromARGB(255, 229, 227, 227);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.695,
      height: MediaQuery.of(context).size.height * 0.05,
      alignment: Alignment.centerRight, // Align button to the right

      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 1, 62, 79),
              Color.fromARGB(255, 1, 35, 75),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(
            radiusButton,
          ), // match the radius of button and container
        ),

        // BUTTON
        child: TextButton(
          onPressed: nothing,
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusButton),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [


              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, right: 8),
                child: Text(
                  'Post',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: buttonColor,
                  ),
                ),
              ),
              


              Icon(
                Icons.near_me_outlined,
                color: buttonColor,
                size: 20,
                weight: 100,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
