import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand22RuPage extends StatefulWidget {
  const Khujand22RuPage({super.key});

  @override
  State<Khujand22RuPage> createState() => _Khujand22RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand22RuPageState extends State<Khujand22RuPage> {
  Widget _khujandContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(8),
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
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
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
                onTap: () => _launchDialer('927-77-90-15'),
                  child: _khujandContainer(
                      'РЦЖ «ASTI»,г. Худжанд\nул. Шуро-24\n927-77-90-15')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-45-19-20'),
                  child: _khujandContainer(
                      'РЦЖ «Кухсор»\nр. Аинӣ,ул. Рудаки-55\n927-62-40-40; 935-45-19-20')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('928-09-29-28'),
                  child: _khujandContainer(
                      'РЦЖ «Занони Шарк»\nг. Пенджикент,ул. Рудаки-85\n928-09-29-28')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('989-10-72-44'),
                  child: _khujandContainer(
                      'РЦЖ «Маркази дастгирии\nҷамоати Ворух»\nг. Исфара, джамоати Ворух\nул. Рудаки-123А\n989-10-72-44')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('938-36-45-45'),
                  child: _khujandContainer(
                      'РЦЖ «Занон барои адолат»\nг.Худжанд,ул. Кирмоншо-1\n938-36-45-45')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-70-04-06'),
                  child: _khujandContainer(
                      'РЦЖ «Умед», г. Исфара\nул. Маркази-22\n927-70-04-06')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-80-35-54'),
                  child: _khujandContainer(
                      'РЦЖ «Занхо зидди зӯроварӣ»\nш. Истаравшан,ул. И. Сомони-186\n988-65-31-65; 918-80-35-54')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
