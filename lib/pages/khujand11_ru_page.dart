import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand11RuPage extends StatefulWidget {
  const Khujand11RuPage({super.key});

  @override
  State<Khujand11RuPage> createState() => _Khujand11RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand11RuPageState extends State<Khujand11RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 8, bottom: 8),
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
                MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('921-77-00-04'),
                  child: _khatlonContainer(
                      'г. Худжанд,\nул. К. Худжанди, 2\n921-77-00-04')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('929-49-32-92'),
                  child: _khatlonContainer(
                      'г. Исфара,\nджамоат д. Чоркух,\nул. Сари бозор\n929-49-32-92')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('926-35-23-61'),
                  child: _khatlonContainer(
                      'г. Пенджикент,\nп. Рудаки,130\n926-35-23-61')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
