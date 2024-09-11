import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand13Page extends StatefulWidget {
  const Khujand13Page({super.key});

  @override
  State<Khujand13Page> createState() => _Khujand13PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand13PageState extends State<Khujand13Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 18, bottom: 18),
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
                onTap: () => _launchDialer('927-73-51-95'),
                child: _khatlonContainer(
                    'ш. Хуҷанд\nТаввалудхонаи шаҳрӣ,\nминтақаи Шимолӣ Шарқӣ\n926-00-95-54; 927-73-51-95'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-08-26-35'),
                child: _khatlonContainer(
                    'ш. Гулистон\nБеморхонаи марказии шаҳри\nкуч. Истиқлол-117\n927-08-26-35;'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('989-08-12-31'),
                child: _khatlonContainer(
                    'ш. Истаравшан\nБеморхонаи марказии шаҳрӣ\n927-86-33-44; 985-23-82-18; 989-08-12-31'),
              ),
              const SizedBox(height: 20), GestureDetector(
                onTap: () => _launchDialer('927-87-87-59'),
                child: _khatlonContainer(
                    'Б. Ғафуров\nБеморхонаи марказии ноҳиявӣ\n928-07-88-70; 928-07-82-70;927-87-87-59'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-14-65-00'),
                child: _khatlonContainer(
                    'ш. Панҷикент\nБеморхонаи марказии ноҳиявӣ\n933-93-00-55; 927-14-65-00'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('987-99-98-70'),
                child: _khatlonContainer(
                    'н. Исфара\nБеморхонаи марказии ноҳиявӣ\n989-09-97-32; 987-99-98-70'),
              ),
              const SizedBox(height: 20), GestureDetector(
                onTap: () => _launchDialer('926-37-99-44'),
                child: _khatlonContainer(
                    'н. Айнӣ\nБеморхонаи марказии ноҳиявӣ\n926-20-45-47; 926-37-99-44'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
