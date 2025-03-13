import 'package:flutter/material.dart';
import 'package:somnia/firebase_options.dart';
import 'package:somnia/write.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(Somnia());
}



class Somnia extends StatelessWidget {
  const Somnia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Write(),
    );
  }
}