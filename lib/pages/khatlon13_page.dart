import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khatlon13Page extends StatefulWidget {
  const Khatlon13Page({super.key});

  @override
  State<Khatlon13Page> createState() => _Khatlon13PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khatlon13PageState extends State<Khatlon13Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 18, bottom: 18),
      // height: MediaQuery.of(context).size.height*0.16,
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
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('939-20-74-00'),
                child: _khatlonContainer(
                    'ш. Бохтар\nкучаи Б.Ғафуров-11\n222-79-32; 939-20-74-00'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('938-54-36-88'),
                  child: _khatlonContainer(
                      'н. Қубодиён\nкучаи И. Сомонӣ\n938-54-36-88')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('985-35-36-71'),
                  child: _khatlonContainer('ш. Кулоб\n985-35-36-71')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
