import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Dushanbe21RuPage extends StatefulWidget {
  const Dushanbe21RuPage({super.key});

  @override
  State<Dushanbe21RuPage> createState() => _Dushanbe21RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Dushanbe21RuPageState extends State<Dushanbe21RuPage> {
  Widget _khatlonContainer(String value) {
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
                onTap: () => _launchDialer('935-01-62-92'),
                child: _khatlonContainer(
                    'Центр поддержки\n«Фемида»\nп. Рудаки-137\n935-01-62-92'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-17-77-56'),
                child: _khatlonContainer(
                    'Центр самопознания женщин\n935-17-77-56'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('221-21-49'),
                child: _khatlonContainer(
                    'ОО «Лига женщин юристов»\nул. Аини, 32/2, д. 7\n221-21-49'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('900-00-12-22'),
                child: _khatlonContainer(
                    'ОО «Корвони умед»\nул. Н. Хисрав, д. 11\n900-00-12-22'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
