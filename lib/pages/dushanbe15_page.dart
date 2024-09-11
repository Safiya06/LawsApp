import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Dushanbe15Page extends StatefulWidget {
  const Dushanbe15Page({super.key});

  @override
  State<Dushanbe15Page> createState() => _Dushanbe15PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Dushanbe15PageState extends State<Dushanbe15Page> {
  Widget _dushanbeContainer(String value, double size) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            value,
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
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
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('221-53-27'),
                child: _dushanbeContainer(
                    'Телефони боварии\nПрокуратураи шаҳри\nДушанбе\n221-53-27',
                    22),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('233-55-13'),
                child: _dushanbeContainer(
                    'Телефони боварии\nСуди шаҳри Душанбе\n233-55-13',22),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('900-09-73-33'),
                child: _dushanbeContainer(
                    'Маркази ҷумҳуриявии\nэкспертизаи тиббию судӣ,\nкӯчаи Сомонӣ-59, иморати 15\nМаркази миллии тиббӣ\n236-65-64; 900-09-73-33',
                    19),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-51-777-56'),
                child: _dushanbeContainer(
                    'Маркази худшиносии бонувон\nхиёбони Рудакӣ 38/1, ошёнаи 14\n935-17-77-56',
                    20),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
