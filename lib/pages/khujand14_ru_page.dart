import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand14RuPage extends StatefulWidget {
  const Khujand14RuPage({super.key});

  @override
  State<Khujand14RuPage> createState() => _Khujand14RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand14RuPageState extends State<Khujand14RuPage> {
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
                MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('929-40-94-94'),
                  child: _khatlonContainer(
                      'г. Худжанд\nул. Фирдавси-120\n226-28-68; 929-40-94-94')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-07-06-65'),
                  child:
                      _khatlonContainer('р. Айни\nсело Томин\n927-07-06-65')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-43-79-29'),
                  child: _khatlonContainer(
                      'г. Исфара\nул. Маркази\n927-01-72-40;918-43-79-29')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
