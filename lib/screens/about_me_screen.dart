import 'package:about_me_3c/screens/video_portfolio_screen_extended.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              // color: Colors.amber,
              padding: const EdgeInsets.all(20),
              // width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // CircleAvatar(
                  //   radius: swidth * 0.5,
                  //   backgroundColor: Colors.blue[200],
                  //   child: CircleAvatar(
                  //     radius: swidth * 0.5 - 25,
                  //     backgroundImage:
                  //         AssetImage('assets/images/profile_pic.jpg'),
                  //   ),
                  // ),
                  Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(swidth * 0.5 - 25),
                    child: CircleAvatar(
                      radius: swidth * 0.5 - 25,
                      backgroundImage:
                          AssetImage('assets/images/profile_pic.jpg'),
                    ),
                  ),
                  Text(
                    'James Bond',
                    style: GoogleFonts.rubik(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Actively Looking',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      FaIcon(
                        FontAwesomeIcons.solidCircleCheck,
                        color: Colors.green[400],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('Applied'),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '99',
                            style: GoogleFonts.robotoCondensed(fontSize: 28),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Reviewed'),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '12',
                            style: GoogleFonts.robotoCondensed(fontSize: 28),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Contacted'),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '7',
                            style: GoogleFonts.robotoCondensed(fontSize: 28),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.orange[300],
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Complete Profile'),
                          Text('Pesonal | Experiences | Certifications'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        final Uri uri = Uri.parse(
                            'https://www.facebook.com/rheimark.edrosolan');
                        if (!await launchUrl(uri)) {
                          print('error launching');
                        }
                      },
                      child: const FaIcon(FontAwesomeIcons.arrowRightLong),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () async {
                        final Uri uri = Uri.parse('sms:+639191231234');
                        if (!await launchUrl(uri)) {
                          print('error launching');
                        }
                      },
                      child: const FaIcon(FontAwesomeIcons.phone),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (_) => const VideoPortfolioScreen()));
                      },
                      child: const FaIcon(FontAwesomeIcons.video),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
