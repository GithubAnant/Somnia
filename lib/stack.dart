import 'package:flutter/material.dart';
import 'package:somnia/text_field.dart';

class StackSomnia extends StatelessWidget {
  const StackSomnia({super.key});

  void nothing () {}

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
                Text(
                  'Somnia. Share your wildest dreams.',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: MediaQuery.of(context).size.width * 0.033,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.012),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextFieldSomnia(),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.019),

            ElevatedButton(onPressed: nothing, 
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                foregroundColor: Colors.white, 
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(13),
                  )
                )
              ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 7),
              child: Text(
                'Submit',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'MontSerrat'
                ),
                ),
            ),
            )

              ],
            ),
          ),
        ],
      );

  }
}