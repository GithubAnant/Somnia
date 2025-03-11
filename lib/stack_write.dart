import 'package:flutter/material.dart';
import 'package:somnia/submit_button.dart';
import 'package:somnia/text_field.dart';
import 'dart:math';

class StackSomniaWrite extends StatefulWidget {
  const StackSomniaWrite({super.key});

  @override
  State<StackSomniaWrite> createState() => _StackSomniaWriteState();
}

class _StackSomniaWriteState extends State<StackSomniaWrite> {
  void nothing() {}

    final List<IconData> icons = [
    Icons.person,
    Icons.person_2,
    Icons.person_3,
    Icons.person_4,
  ];

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/hero_background.jpg",
            fit: BoxFit.cover,
          ),
        ),

        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // HERO TEXT
              Text(
                'Somnia. Share your wildest dreams.',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: MediaQuery.of(context).size.width * 0.033,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // gap
              SizedBox(height: MediaQuery.of(context).size.height * 0.012),

              // TEXT FIELD
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFieldSomnia(),
              ),

              // gap
              SizedBox(height: MediaQuery.of(context).size.height * 0.019),


              // Submit Button
              SubmitButton()
            ],
          ),
        ),
      ],
    );
  }
}
