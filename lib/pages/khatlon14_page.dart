import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khatlon14Page extends StatefulWidget {
  const Khatlon14Page({super.key});

  @override
  State<Khatlon14Page> createState() => _Khatlon14PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khatlon14PageState extends State<Khatlon14Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      height: 146,
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
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('832-22-30-63'),
                child: _khatlonContainer(
                    'ш. Бохтар\nБеморхонаи клиникии\nвилоятӣ ба номи Б. Воҳидов\n918-69-45-64; 832-22-30-63'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('985-09-63-20'),
                child: _khatlonContainer(
                    'Таввалуд-хонаи\nш. Кулоб\n985-09-63-20'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('900-60-15-49'),
                child: _khatlonContainer(
                    'н. Панҷ\nБеморхонаи\nмарказии ноҳияви\n900-60-15-49'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('880-38-35-35'),
                child: _khatlonContainer(
                    'н. Фархор\nБеморхонаи\nмарказии ноҳиявӣ\n900-60-15-49; 880-38-35-35'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('901-00-99-07'),
                child: _khatlonContainer(
                    'н. Ёвон\nБеморхонаи\nмарказии ноҳиявӣ\n901-00-99-07'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('985-37-53-27'),
                child: _khatlonContainer(
                    'н. Восеъ\n Беморхонаи\nмарказии ноҳиявӣ\n985-37-53-27'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-31-08-50'),
                child: _khatlonContainer(
                    'н. А.Ҷоми\nБеморхонаи\nмарказии ноҳиявӣ\n935-31-08-50'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('934-20-05-07'),
                child: _khatlonContainer(
                    'н. Шаҳритус\nБеморхонаи\nмарказии ноҳиявӣ\n934-20-05-07'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
