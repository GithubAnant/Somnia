import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerSidebar extends StatelessWidget {
  const DrawerSidebar({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.827),
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 26, bottom: 8, left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      _launchURL(
                        'https://www.linkedin.com/in/anant-singhal-linkdn/',
                      );
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                    ),
                  ),

                  Text('Anant Singhal', style: TextStyle(color: Colors.white)),

                ],
              ),
            ),

            Container(
              margin: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      _launchURL('https://github.com/GithubAnant');
                    },
                    icon: FaIcon(FontAwesomeIcons.github, color: Colors.white),
                  ),

                  Text(' GithubAnant  ', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
