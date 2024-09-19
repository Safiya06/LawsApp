import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Ntm11RuPage extends StatefulWidget {
  const Ntm11RuPage({super.key});

  @override
  State<Ntm11RuPage> createState() => _Ntm11PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Ntm11PageState extends State<Ntm11RuPage> {
  Widget _ntmContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(10),
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
                onTap: () => _launchDialer('22-841'),
                  child: _ntmContainer(
                      'г. Турсунзода\nул. Б. Гафуров 22\n(+9923130) 22-841')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('22-210'),
                  child: _ntmContainer(
                      'р. Рудаки\nг. Сомониен\nул. Бустон-65\n(8-3137) 22-210')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('21-525'),
                  child: _ntmContainer(
                      'г. Таджикабад\nул. Сомониен 12\n(8-3154) 21-525')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('21-358'),
                  child: _ntmContainer(
                      'г. Pогун,\nул. Норакиен 54/1\n(8-3134) 21-358')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('32-106'),
                  child: _ntmContainer(
                      'г. Шахринав\nул. М. Турсунзода 71\n(+992 3155) 31-494; 32-106')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('32-234'),
                  child: _ntmContainer(
                      'г. Файзабад\nул. И. Сомони 40\n(8-3135) 32-234')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('22-534'),
                  child: _ntmContainer(
                      'р. Лахш\nг. Вахдат\nул. Сомониен-33\n(8-3132) 22-534')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('22-157'),
                  child:
                      _ntmContainer('р. Сангвор\nул. Восеъ\n(8-3156) 22-157')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
