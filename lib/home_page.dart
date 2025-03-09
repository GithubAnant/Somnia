import 'package:flutter/material.dart';
import 'package:somnia/appbar_button.dart';
import 'package:somnia/stack.dart';
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

      body: StackSomnia(),
    );
  }
}
