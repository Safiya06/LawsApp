import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khatlon22Page extends StatefulWidget {
  const Khatlon22Page({super.key});

  @override
  State<Khatlon22Page> createState() => _Khatlon22PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khatlon22PageState extends State<Khatlon22Page> {
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
                onTap: () => _launchDialer('278-79'),
                  child: _khatlonContainer(
                      'Маркази бӯҳронии ТҶ «Ғамхорӣ»\nш. Бохтар, кӯчаи Ваҳдат-137\n222-78-79 ')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-500-01-67'),
                  child: _khatlonContainer(
                      'ТҶ «Майрам»\nш. Кӯлоб, кӯчаи Неъматов-7\n935-00-01-67')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('91-865-92-93'),
                  child: _khatlonContainer(
                      'ТҶ «Дилафрӯз»\nш. Бохтар\nкӯчаи Дустии халқҳо-68\n918-65-92-93')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('228-88'),
                  child: _khatlonContainer(
                      'ТҶ «Бонувони фардо»\nн. Шаҳритус\nкӯчаи И. Сомонӣ-28б\n(8-3240) 228-88;')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
