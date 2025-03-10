import 'package:flutter/material.dart';
import 'package:somnia/appbar_button.dart';
import 'package:somnia/home_page.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {

  Color activeButtonColor = Colors.white;
  Color inActiveButtonColor = const Color.fromARGB(255, 115, 115, 115);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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

    );
  }
}