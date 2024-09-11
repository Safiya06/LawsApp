import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Dushanbe11RuPage extends StatefulWidget {
  const Dushanbe11RuPage({super.key});

  @override
  State<Dushanbe11RuPage> createState() => _Dushanbe11RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Dushanbe11RuPageState extends State<Dushanbe11RuPage> {
  Widget _dushanbeContainer(String value) {
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
              fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white),
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
                onTap: () => _launchDialer('900-46-46-91'),
                child: _dushanbeContainer(
                    'Шохмансур-1\nул. Валаматзода 12\n900-46-46-91'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('939-22-34-37'),
                  child: _dushanbeContainer(
                      'Шохмансур-2\nул. Бустон 1\n939-22-34-37')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('988-508-088'),
                  child: _dushanbeContainer(
                      'Фирдавси-1\nул. Н. Карабаев 44\n988-508-088')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('903-33-44-63'),
                child: _dushanbeContainer(
                    'Фирдавси-2\nул. Р. Амакиев, г. 4, и. 20\n903-33-44-63'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-16-50-25'),
                  child: _dushanbeContainer(
                      'Сино-2 \nул. Н. Махсум 95/1\n933-16-50-25')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
