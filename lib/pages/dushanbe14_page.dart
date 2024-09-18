import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Dushanbe14Page extends StatefulWidget {
  const Dushanbe14Page({super.key});

  @override
  State<Dushanbe14Page> createState() => _Dushanbe14PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Dushanbe14PageState extends State<Dushanbe14Page> {
  Widget _dushanbeContainer(String value) {
    return Container(
      // height: MediaQuery.of(context).size.height*0.17,
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
                  fontSize: 20,
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
                onTap: () => _launchDialer('223-02-842'),
                child: _dushanbeContainer(
                    'Таввалудхонаи Nº2\nк. Хусейнзода-8\n907-77-29-77;\n223-02-842'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('907-27-27-22'),
                child: _dushanbeContainer(
                    'Маркази миллии тиббӣ\nкӯчаи И. Сомонӣ-59\n918-69-78-09;\n907-27-27-22'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('903-77-05-73'),
                child: _dushanbeContainer(
                    'Маҷмааи тиббии «Истиқлол»\nбинои Б6, ошёнаи 7\nк. Н Қарабоев-60\n935-30-39-94; 903-77-05-73'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
