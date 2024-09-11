import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Ntm22RuPage extends StatefulWidget {
  const Ntm22RuPage({super.key});

  @override
  State<Ntm22RuPage> createState() => _Ntm22RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Ntm22RuPageState extends State<Ntm22RuPage> {
  Widget _ntmnContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 140,
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
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
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
                onTap: () => _launchDialer('907-74-22-96'),
                  child: _ntmnContainer(
                      'РЦЖ «Маркази дастгирии Гарм»\n р. Рашт, г. Гарм, ул. Сомони-29\n918-21-47-37; 907-74-22-96')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('987-21-50-26'),
                  child: _ntmnContainer(
                      'РЦЖ «Хингоб»\nр. Сангвор, ул. Сино-36\n918-26-42-22: 987-21-50-26')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-889-57-12'),
                  child: _ntmnContainer(
                      'РЦЖ «Рохнамо»\nг. Вахдат, ул.Сомониён-55\n93-889-57-12')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
