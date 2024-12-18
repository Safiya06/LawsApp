import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khatlon11RuPage extends StatefulWidget {
  const Khatlon11RuPage({super.key});

  @override
  State<Khatlon11RuPage> createState() => _Khatlon11RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khatlon11RuPageState extends State<Khatlon11RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 18),
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
                onTap: () => _launchDialer('933-98-46-46'),
                child: _khatlonContainer(
                    'р. Джайхун,\nп. Дусти, ул. 1-ое мая\n933-98-46-46'),
              ),
              const SizedBox(height: 20),
              _khatlonContainer('г. Бохтар,\nул. Борбад, 7'),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-98-15-90'),
                  child: _khatlonContainer(
                      'p.Дусти, \nул. Л.Каримовa\n935-98-15-90')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-45-45-96'),
                  child: _khatlonContainer(
                      'г. Куляб\n м. Ш. Шоҳин, 8\n918-45-45-96')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('907 30 56 66'),
                  child: _khatlonContainer('г. Левакант,\n907 30 56 66')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
