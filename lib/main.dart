import 'package:flutter/material.dart';
import 'package:somnia/home_page.dart';

void main(){
  runApp(Somnia());
}

class Somnia extends StatelessWidget {
  const Somnia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Background(),
    );
  }
}