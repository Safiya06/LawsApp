import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Ntm11Page extends StatefulWidget {
  const Ntm11Page({super.key});

  @override
  State<Ntm11Page> createState() => _Ntm11PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Ntm11PageState extends State<Ntm11Page> {
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
                MaterialPageRoute(builder: (context) => const MainPage()));
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
                      'ш. Турсунзода\nкӯчаи Б. Ғафуров 22\n(+9923130) 22-841')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('22-210'),
                  child: _ntmContainer(
                      'н. Рӯдакӣ\nш. Сомониён ,кӯчаи Бӯстон-65\n(8-3137) 22-210')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('21-525'),
                  child: _ntmContainer(
                      'ш. Тоҷикобод\nкӯчаи Сомониён 12\n(8-3154) 21-525')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('21-358'),
                  child: _ntmContainer(
                      'ш. Pоғун\nкӯчаи Норакиён 54/1\n(8-3134) 21-358')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('32-106'),
                  child: _ntmContainer(
                      'ш. Шаҳринав\nкӯчаи М. Турсунзода 71\n(+992 3155) 31-494; 32-106')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('32-234'),
                  child: _ntmContainer(
                      'ш. Файзобод\nкӯчаи И. Сомонӣ 40\n(8-3135) 32-234')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('22-534'),
                  child: _ntmContainer(
                      'ш. Ваҳдат\n кӯчаи Сомониён-33\n(8-3132) 22-534')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('22-157'),
                  child: _ntmContainer('н. Сангвор\n кӯчаи Восеъ\n(8-3156) 22-157')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
