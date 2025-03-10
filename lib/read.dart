import 'package:flutter/material.dart';
import 'package:somnia/appbar_button.dart';
import 'package:somnia/home_page.dart';
import 'package:somnia/stack_read.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  Color readButtonColor = const Color.fromARGB(255, 255, 255, 255);
  Color writeButtonColor = const Color.fromARGB(255, 115, 115, 115);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        surfaceTintColor: const Color.fromARGB(255, 0, 0, 0),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBarButton(
              buttonName: 'Write a dream',
              buttonColor: writeButtonColor,
              destination: Background(),
            ),

            AppBarButton(
              buttonName: 'Dream Vault',
              buttonColor: readButtonColor,
              destination: Read(),
            ),
          ],
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        minimum: EdgeInsets.zero,
        child: StackSomniaRead(
          
        ),
      ),
    );
  }
}
