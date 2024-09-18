import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Vmkb22RuPage extends StatefulWidget {
  const Vmkb22RuPage({super.key});

  @override
  State<Vmkb22RuPage> createState() => _Vmkb22RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Vmkb22RuPageState extends State<Vmkb22RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
      // height: 140,
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
                onTap: () => _launchDialer('935-93-97-74'),
                  child: _khatlonContainer(
                      'ОО «Занон барои адолат»\nг. Хоруг, ул. Ш. Шотемур-8\n935-93-97-74')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('934-77-97-77'),
                  child: _khatlonContainer(
                      'ОО «Мадина»\nг. Хоруг, ул. Х. Кирмоншо-66\n935-55-47-36; 934-77-97-77')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('919-23-00-71'),
                  child: _khatlonContainer(
                      'ОО «Номус ва инсоф»\nг. Хоруг, ул. Х. Кирмоншо-1\n919-23-00-71')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
