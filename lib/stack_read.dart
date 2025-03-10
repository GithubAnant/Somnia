import 'package:flutter/material.dart';
import 'package:somnia/sample_data.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class StackSomniaRead extends StatelessWidget {
  const StackSomniaRead({super.key});

  void nothing() {}

  @override
  Widget build(BuildContext context) {
    double widthCard = 0.87;

    if (kIsWeb) {
      widthCard = 0.40;
    }

    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/hero_background.jpg",
            fit: BoxFit.cover,
          ),
        ),

        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: sampleDreams.length,
          itemBuilder: (context, index) {
            final dream = sampleDreams[index];
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Align(
                alignment: Alignment.center,
                child: Card(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha(100),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    width: MediaQuery.of(context).size.width * widthCard,
                    child: Container(
                      // padding: EdgeInsets.all(15),
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "${dream['text']}",
                        style: TextStyle(
                          color: Colors.white
                        ),),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
