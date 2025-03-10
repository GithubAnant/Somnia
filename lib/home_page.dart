import 'package:flutter/material.dart';
import 'package:somnia/appbar_button.dart';
import 'package:somnia/read.dart';
import 'package:somnia/stack.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  bool activeButtonWrite = true;

  Color activeButtonColor = Colors.white;
  Color inActiveButtonColor = const Color.fromARGB(255, 115, 115, 115);

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
            AppBarButton(buttonName: 'Write',buttonColor: activeButtonColor,destination: Background(),),
            AppBarButton(buttonName: 'Read',buttonColor: inActiveButtonColor, destination: Read(),),
          ],
        ),
        centerTitle: true,
      ),

      body: StackSomnia(),
    );
  }
}
