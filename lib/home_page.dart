import 'package:flutter/material.dart';
import 'package:somnia/appbar_button.dart';
import 'package:somnia/read.dart';
import 'package:somnia/stack_write.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {

  @override
  void initState() {
    super.initState();
  }

  bool activeButtonWrite = true;

  

  Color writeButtonColor = const Color.fromARGB(255, 255, 255, 255);
  Color readButtonColor = const Color.fromARGB(255, 115, 115, 115);

  void nothing() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(onPressed:(){}, icon:  Icon(Icons.menu), color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBarButton(buttonName: 'Write a dream',buttonColor: writeButtonColor,destination: Background(),),
            AppBarButton(buttonName: 'Dream Vault',buttonColor: readButtonColor, destination: Read(),),
          ],
        ),
        centerTitle: true,
      ),

      body: StackSomniaWrite(),
    );
  }
}
