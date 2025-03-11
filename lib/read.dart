
import 'package:flutter/material.dart';
import 'package:somnia/appbar_button.dart';
import 'package:somnia/drawer_sidebar.dart';
import 'package:somnia/write.dart';
import 'package:somnia/stack_read.dart';

class Read extends StatefulWidget {
  const Read({super.key});

  @override
  State<Read> createState() => _ReadState();
}

class _ReadState extends State<Read> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
              color: Colors.white,
            );
          }
        ),
        surfaceTintColor: const Color.fromARGB(255, 0, 0, 0),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBarButton(
              buttonName: 'Write a dream',
              buttonColor: const Color.fromARGB(255, 115, 115, 115),
              destination: const Write(),
              isActive: false,
            ),

            AppBarButton(
              buttonName: 'Dream Vault',
              buttonColor: Colors.white,
              destination: const Read(),
              isActive: true,
            ),
          ],
        ),
        centerTitle: true,
      ),

      drawer: DrawerSidebar(),

      body: const SafeArea(
        minimum: EdgeInsets.zero,
        child: StackSomniaRead(),
      ),
    );
  }
}

