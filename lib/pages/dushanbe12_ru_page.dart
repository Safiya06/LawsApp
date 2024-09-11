import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Dushanbe12RuPage extends StatefulWidget {
  const Dushanbe12RuPage({super.key});

  @override
  State<Dushanbe12RuPage> createState() => _Dushanbe12RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Dushanbe12RuPageState extends State<Dushanbe12RuPage> {
  Widget _dushanbeContainer(String value) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
          padding: const EdgeInsets.all(18.0),
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
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('227-10-31'),
                child: _dushanbeContainer(
                    'Центральный аппарат\n221-34-71; 227-17-41;\n227-10-31'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-70-81-43'),
                  child: _dushanbeContainer(
                      'г. Душанбе\n221-30-57\n918-70-81-43')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('900-08-91-25'),
                  child: _dushanbeContainer(
                      'р. Фирдавси\n233-89-48\n900-08-91-25')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('917-40-97-45'),
                  child: _dushanbeContainer(
                      'р. Шохмансур\n227-61-66\n917-40-97-45')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('917-14-14-02'),
                  child: _dushanbeContainer(
                      'р. И. Сомони\n221-05-36\n917-14-14-02')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('98-915-12-08'),
                  child:
                      _dushanbeContainer('р. Сино\n235-06-73\n98-915-12-08')),
            ],
          ),
        ),
      ),
    );
  }
}
