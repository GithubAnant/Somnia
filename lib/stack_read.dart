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
      widthCard = 0.5;
    }


    return Stack(
      children: [
        // background image
        Positioned.fill(
          child: Image.asset(
            "assets/images/hero_background.jpg",
            fit: BoxFit.cover,
          ),
        ),

        Column(
          children: [
            HeaderText(),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: sampleDreams.length,
                itemBuilder: (context, index) {
                  final dream = sampleDreams[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Align(
                      alignment: Alignment.center,
                      child: DreamCard(widthCard: widthCard, dream: dream),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DreamCard extends StatelessWidget {
  const DreamCard({super.key, required this.widthCard, required this.dream});

  final double widthCard;
  final Map<String, dynamic> dream;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withAlpha(100),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        width: MediaQuery.of(context).size.width * widthCard,
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Align(
                child: Row(
                  children: [
                    Icon(Icons.person, color: Colors.white),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Anonymous",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "\n${dream['text']}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'Lato',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'What Others Dreamed',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontSize: MediaQuery.of(context).size.width * 0.033,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
