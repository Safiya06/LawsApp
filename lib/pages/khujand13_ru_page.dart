import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand13RuPage extends StatefulWidget {
  const Khujand13RuPage({super.key});

  @override
  State<Khujand13RuPage> createState() => _Khujand13RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand13RuPageState extends State<Khujand13RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 18, bottom: 18),
      // height: 146,
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
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('927735195'),
                child: _khatlonContainer(
                    'г. Худжанд,\nгородской родильный дом,\nСеверно-Восточная область\n926009554;(8-3422)55-460; 927735195'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-708-26-35'),
                child: _khatlonContainer(
                    'г. Гулистон,\nЦентральная городская больница,\nул. Истиклол, 117\n92-708-26-35; (8-3432)4853'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('989081231'),
                child: _khatlonContainer(
                    'г. Истаравшан,\nЦентральная городская больница,\n927863344; 985238218; 989081231'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-787-87-59'),
                child: _khatlonContainer(
                    'р. Б.Гафуров,\nЦентральная районная больница,\n92-8078870; 92-807-82-70; 92-787-87-59;'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-14-65-00'),
                child: _khatlonContainer(
                    'г.Пенджикент,\nЦентральная городская больница,\n933-93-00-55; 927-14-65-00'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('987-99-98-70'),
                child: _khatlonContainer(
                    'г. Исфара,\nЦентральная городская больница,\n989-09-97-32; 987-99-98-70'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('926-37-99-44'),
                child: _khatlonContainer(
                    'р. Айни,\nЦентральная районная больница,\n926-20-45-47; 926-37-99-44'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
