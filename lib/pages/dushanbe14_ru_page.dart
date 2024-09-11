import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Dushanbe14RuPage extends StatefulWidget {
  const Dushanbe14RuPage({super.key});

  @override
  State<Dushanbe14RuPage> createState() => _Dushanbe14RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Dushanbe14RuPageState extends State<Dushanbe14RuPage> {
  Widget _dushanbeContainer(String value) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          )),
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
                onTap: () => _launchDialer('223-02-84'),
                child: _dushanbeContainer(
                    'Родильный дом Nº 2\nул. Хусейнзода-8\n907-77-29-77;\n223-02-84'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('907-27-27-22'),
                child: _dushanbeContainer(
                    'Национальный\nмедицинский центр\nул. И. Сомони-59\n918-69-78-09;\n907-27-27-22'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('903-77-05-73'),
                child: _dushanbeContainer(
                    'Медицинский комплекс\n"Истиклол» корпус Б6, 7 этаж,\nк. Н Қаробоев-60\n935-30-39-94;903-77-05-73'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
