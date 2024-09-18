import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khatlon14RuPage extends StatefulWidget {
  const Khatlon14RuPage({super.key});

  @override
  State<Khatlon14RuPage> createState() => _Khatlon14RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khatlon14RuPageState extends State<Khatlon14RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      // height: MediaQuery.of(context).size.height*0.17,
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
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('832-22-30-63'),
                child: _khatlonContainer(
                    'г. Бохтар\nКлиническая больница\nимени Б. Вахидов\n918-69-45-64; 832-22-30-63'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('985-09-63-20'),
                child: _khatlonContainer(
                    'Родильный дом\nг.Куляб\n985-09-63-20'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('900-60-15-49'),
                child: _khatlonContainer(
                    'р. Пяндж\nЦентральная районная больница\n900-60-15-49'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('880-38-35-35'),
                child: _khatlonContainer(
                    'р. Фархор\nЦентральная районная больница\n900-60-15-49; 880-38-35-35'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('901-00-99-07'),
                child: _khatlonContainer(
                    'р. Яван\nЦентральная районная больница\n901-00-99-07'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('985-37-53-27'),
                child: _khatlonContainer(
                    'р. Восе\nЦентральная районная больница\n985-37-53-27'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-31-08-50'),
                child: _khatlonContainer(
                    'р. А.Джами\nЦентральная районная больница\n935-31-08-50'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('934-20-05-07'),
                child: _khatlonContainer(
                    'р. Шахритус\nЦентральная районная больница\n934-20-05-07'),
              ),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
