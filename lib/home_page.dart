import 'package:flutter/material.dart';
import 'package:somnia/appbar_button.dart';
import 'package:somnia/text_field.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  bool activeButtonWrite = true;
  void nothing() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBarButton(buttonName: 'Write'),
            AppBarButton(buttonName: 'Read'),
          ],
        ),
        centerTitle: true,
      ),

      body: Stack(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
