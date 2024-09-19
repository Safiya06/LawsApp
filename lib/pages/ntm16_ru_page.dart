import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Ntm16RuPage extends StatefulWidget {
  const Ntm16RuPage({super.key});

  @override
  State<Ntm16RuPage> createState() => _Ntm16RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Ntm16RuPageState extends State<Ntm16RuPage> {
  Widget _ntmnContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 18, bottom: 18),
      // height: MediaQuery.of(context).size.height*0.19,
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
                onTap: () => _launchDialer('933-55-36-39'),
                  child: _ntmnContainer(
                      'р. Шахринав\nздание Центра юстиции\nул. И.Сомони\n933-55-36-39')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-59-94'),
                  child: _ntmnContainer(
                      'г.Вахдат\nздание Центра юстиции\nп.Рудаки\n933-55-59-94')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-78-20'),
                  child: _ntmnContainer(
                      'р. Нурабад\nздание «Таджиксугурта»\nул. И. Халимов-11\n933-55-78-20')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-49-87'),
                  child: _ntmnContainer(
                      'р. Таджикабад\nздание Микрофинансового банка\nул. Сомони-21\n933-55-49-87')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-54-32-19'),
                  child: _ntmnContainer(
                      'р. Файзабад, здание\nИсполнительного органа государственной власти-2\nул. И. Сомони-49\n935-54-32-19')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer(' 933-55-95-72'),
                  child: _ntmnContainer(
                      'г. Гисар \nздание Исполнительного органа государственной власти\nул. И. Сомони, 1-ый этаж, 10,  933-55-95-72)')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('930-10-01-67'),
                  child: _ntmnContainer(
                      'р. Рудаки\nг. Сомониён, ул. И. Сомони\nздание центра юстиции (1 эаж)\n930-10-01-67')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
