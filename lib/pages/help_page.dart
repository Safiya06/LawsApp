import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/services.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _HelpPageState extends State<HelpPage> {
  bool _showPhoneNumbers = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 15),
            color: Color(0xfffea701),
            child: GestureDetector(
               onTap: () => _launchDialer('92 970-16-66'),
              child: Text(
                '92 970-16-66',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          )
              .animate(
                target: _showPhoneNumbers ? 1 : 0,
              )
              .scale(
                duration: Duration(milliseconds: 250),
              )
              .fadeIn()
              .slideY(
                begin: 2,
                end: 0,
                duration: Duration(milliseconds: 250),
              ),

          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _showPhoneNumbers = !_showPhoneNumbers;
                });
              },
              child: Container(
                height: 335,
                width: 335,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(200),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 8,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      '!',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 175,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'КУМАК',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 37,
                          fontWeight: FontWeight.w800),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Animate(
          //   // autoPlay: _showPhoneNumbers,
          //   // delay: Duration(hours: _showPhoneNumbers ? 0 : 10),
          //   effects: [FadeEffect(), SlideEffect(), ScaleEffect()],
          //   child: Text('Phone 2'),
          // ),

          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 15),
            color: Color(0xfffea701),
            child: GestureDetector(
              onTap: () => _launchDialer('92 970-16-66'),
              child: Text(
                '92 970-16-66',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          )
              .animate(
                target: _showPhoneNumbers ? 1 : 0,
              )
              .scale(
                duration: Duration(milliseconds: 250),
              )
              .fadeIn()
              .slideY(
                begin: -2,
                end: 0,
                duration: Duration(milliseconds: 250),
              ),
        ],
      ),
    );
  }
}
