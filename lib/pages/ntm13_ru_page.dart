import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Ntm13RuPage extends StatefulWidget {
  const Ntm13RuPage({super.key});

  @override
  State<Ntm13RuPage> createState() => _Ntm13RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Ntm13RuPageState extends State<Ntm13RuPage> {
  Widget _ntmContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(10),
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
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () => _launchDialer('939-92-58-19'),
                  child: _ntmContainer('г. Вахдат\nд. ОМВД\n939-92-58-19')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('918-32-75-28'),
                  child: _ntmContainer(
                      'р. Рашт\nг. Гарм,\nул. И. Сомони-36\n918-32-75-28')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('900-27-81-81'),
                  child: _ntmContainer('р. Рудаки\n900-27-81-81')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('907-17-36-36'),
                  child: _ntmContainer('г.Гисар\n907-17-36-36')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
