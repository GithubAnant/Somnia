import 'package:flutter/material.dart';
import 'package:somnia/appbar_button.dart';
import 'package:somnia/write.dart';
import 'package:somnia/stack_read.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  Color readButtonColor = const Color.fromARGB(255, 255, 255, 255);
  Color writeButtonColor = const Color.fromARGB(255, 115, 115, 115);

  bool activeButtonWrite = false;
  bool activeButtonRead = true;

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
              destination: Write(),
            ),

            AppBarButton(
              buttonName: 'Dream Vault',
              buttonColor: readButtonColor,
              destination: NullWidget(),
            ),
          ],
        ),
        centerTitle: true,
      ),


      drawer: Drawer(),

      body: SafeArea(
        minimum: EdgeInsets.zero,
        child: StackSomniaRead(
          
        ),
      ),
    );
  }
}



class NullWidget extends StatelessWidget {
  const NullWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Navigator.pop(context);
    return const SizedBox.shrink();
  }
}
