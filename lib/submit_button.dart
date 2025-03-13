import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class SubmitButton extends StatelessWidget {
  SubmitButton({super.key, required this.controller});

  final TextEditingController controller;
  final AudioPlayer audioPlayer = AudioPlayer();


  void _playSound() async {
  await audioPlayer.setSourceAsset('audio/sound_effect.ogg'); // Use .ogg
  await audioPlayer.resume();
}

  Future<void> addDream(BuildContext context) async {
    if (controller.text.length >= 50) {
    await FirebaseFirestore.instance.collection('dreams').add({
      'text': controller.text,
      'status': 'approved',  
      'timestamp': FieldValue.serverTimestamp(),
    });

      controller.clear();
      _playSound();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Dream added successfully!'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.green,
      ),
    );    }
  }


  final double radiusButton = 6;
  final Color buttonColor = const Color.fromARGB(255, 229, 227, 227);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.695,
      height: MediaQuery.of(context).size.height * 0.05,
      alignment: Alignment.centerRight, // Align button to the right





      child: Container(




        //// GRADIENT
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 1, 62, 79),
              Color.fromARGB(255, 1, 35, 75),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(radiusButton),
        ),




        //// BUTTON
        child: TextButton(
          onPressed: () {
            addDream(context);
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusButton),
            ),
          ),




          // align
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, right: 8),





                // button text
                child: Text(
                  'Post',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: buttonColor,
                  ),
                ),
              ),





              // send icon
              Icon(
                Icons.near_me_outlined,
                color: buttonColor,
                size: 20,
                weight: 100,
              ),




            ],
          ),
        ),
      ),
    );
  }
}
