import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: GestureDetector(
                  onTap: () =>  _launchDialer('92 780-40-74'),
                  child: Text(
                    '92 780-40-74',
                    style: TextStyle(
                      color: Color(0xFF654900),
                      fontWeight: FontWeight.w700,
                      fontSize: 40
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
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
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () => _launchDialer('92 970-16-66'),
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    '92 970-16-66',
                    style: TextStyle(
                      color: Color(0xFF654900),
                      fontWeight: FontWeight.w700,
                      fontSize: 40
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
