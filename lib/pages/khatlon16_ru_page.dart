import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khatlon16RuPage extends StatefulWidget {
  const Khatlon16RuPage({super.key});

  @override
  State<Khatlon16RuPage> createState() => _Khatlon16RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khatlon16RuPageState extends State<Khatlon16RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 18, bottom: 18),
      // height: MediaQuery.of(context).size.height*0.16,
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
                onTap: () => _launchDialer('93-355-59-86'),
                child: _khatlonContainer(
                    'р. Джайхун,\nп. Дусти, здание Центр юстиции, ул. И. Сомони, 10\n93-355-59-86'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-355-59-83'),
                child: _khatlonContainer(
                    'р. Восе,\nул. Мирзоев, 2\n93-355-59-83'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-355-36-38'),
                child: _khatlonContainer(
                    'р. Яван,\nдж. г. Яван, \nул. М. Турсунзаде, 42, 3 этаж\n93-355-36-38'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-355-96-04'),
                child: _khatlonContainer(
                    'р. Дусти,\nздание Центр молодёжи,\nул. Рудаки\n93-355-96-04'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer(''),
                child: _khatlonContainer(
                    'р. Дж. Балхи, п. Балх, ул. Тугаланг, 6, здание ...\n 93-355-36-43'),
              ),
              const SizedBox(height: 20),GestureDetector(
                onTap: () => _launchDialer(''),
                child: _khatlonContainer(
                    ''),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer(''),
                child: _khatlonContainer(
                    ''),
              ),
              const SizedBox(height: 20),GestureDetector(
                onTap: () => _launchDialer(''),
                child: _khatlonContainer(
                    ''),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer(''),
                child: _khatlonContainer(
                    ''),
              ),
              const SizedBox(height: 20),GestureDetector(
                onTap: () => _launchDialer(''),
                child: _khatlonContainer(
                    ''),
              ),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
