
import 'package:flutter/material.dart';
import 'package:somnia/appbar_button.dart';
import 'package:somnia/drawer_sidebar.dart';
import 'package:somnia/read.dart';
import 'package:somnia/stack_write.dart';

class Write extends StatefulWidget {
  const Write({super.key});

  @override
  State<Write> createState() => _WriteState();
}

class _WriteState extends State<Write> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBarButton(
              buttonName: 'Write a dream',
              buttonColor: Colors.white,
              destination: const Write(),
              isActive: true,
            ),

            AppBarButton(
              buttonName: 'Dream Vault',
              buttonColor: const Color.fromARGB(255, 115, 115, 115),
              destination: const Read(),
              isActive: false,
            ),
          ],
        ),
        centerTitle: true,
      ),

      drawer: DrawerSidebar(),

      body: const StackSomniaWrite(),
    );
  }
}
