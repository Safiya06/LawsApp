import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand14Page extends StatefulWidget {
  const Khujand14Page({super.key});

  @override
  State<Khujand14Page> createState() => _Khujand14PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand14PageState extends State<Khujand14Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 18),
      // height: 146,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          value,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 40,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('929-40-94-94'),
                  child: _khatlonContainer(
                      'ш. Хуҷанд,\nк. Фирдавсӣ, 120\n(8-3226)28-68; 929-40-94-94')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-07-06-65'),
                  child:
                      _khatlonContainer('н. Айнӣ,\nдеҳаи Томин\n927-07-06-65')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-43-79-29'),
                  child: _khatlonContainer(
                      'ш. Исфара,\nк. Марказӣ\n927-01-72-40; 918-43-79-29')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
