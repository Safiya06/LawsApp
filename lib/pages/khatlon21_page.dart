import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khatlon21Page extends StatefulWidget {
  const Khatlon21Page({super.key});

  @override
  State<Khatlon21Page> createState() => _Khatlon21PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khatlon21PageState extends State<Khatlon21Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 222,
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
                onTap: () => _launchDialer('93-503-60-42'),
                child: _khatlonContainer(
                    'М33 «Марифат»\nн. Хуросон, ҷамоати\nОби Киик, кӯчаи Сомонӣ-1\n934-40-20-64; 935-03-60-42'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-32-12-88'),
                child: _khatlonContainer(
                    'М33 «Дармонбахш»\nн. Дӯстӣ, кӯчаи Рӯдакӣ-35\n937-26-75-57; 918-32-12-88'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('234-74-23-96'),
                child: _khatlonContainer(
                    'М33 «Оксана»\n н. Ҷ. Балхӣ\n кӯчаи Ҳайдарова-24\n918-698-530; 234-74-23-96'),
              ),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
