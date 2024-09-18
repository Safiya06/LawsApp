import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Dushanbe11Page extends StatefulWidget {
  const Dushanbe11Page({super.key});

  @override
  State<Dushanbe11Page> createState() => _Dushanbe11PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Dushanbe11PageState extends State<Dushanbe11Page> {
  Widget _dushanbeContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
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
                onTap: () => _launchDialer('900-46-46-91'),
                child: _dushanbeContainer(
                    'Шоҳмансур-1\nкӯчаи Валаматзода 12\n900-46-46-91'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('939-22-34-37'),
                  child: _dushanbeContainer(
                      'Шоҳмансур-2\nкӯчаи Бӯстон 1\n939-22-34-37')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('988-508-088'),
                  child: _dushanbeContainer(
                      'Фирдавсӣ-1\nкӯчаи Н. Қарабоев 44\n988-508-088')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('903-33-44-63'),
                child: _dushanbeContainer(
                    'Фирдавсӣ-2\nкӯчаи Р. Амакиев, г. 4, и. 20\n903-33-44-63'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-316-50-25'),
                  child: _dushanbeContainer(
                      'Сино-2\nкӯчаи Н. Махсум 95/1\n933-16-50-25')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
