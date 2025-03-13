import 'package:flutter/material.dart';
import 'package:somnia/sample_data.dart';
import 'package:audioplayers/audioplayers.dart';

class SubmitButton extends StatelessWidget {
  SubmitButton({super.key, required this.controller});

  final TextEditingController controller;
  final AudioPlayer audioPlayer = AudioPlayer();


  void _playSound() async {
  await audioPlayer.setSourceAsset('audio/sound_effect.ogg'); // Use .ogg
  await audioPlayer.resume();
}


  void addData() {
    if (controller.text.length >= 100) {
      sampleDreams.add({'text': controller.text, 'status': 'approved'});
      controller.clear();
      _playSound();
    }
    // else{

    // }
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
          onPressed: addData,
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
