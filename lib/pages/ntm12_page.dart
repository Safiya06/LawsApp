import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Ntm12Page extends StatefulWidget {
  const Ntm12Page({super.key});

  @override
  State<Ntm12Page> createState() => _Ntm12PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Ntm12PageState extends State<Ntm12Page> {
  Widget _ntmContainer(String value) {
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
                  onTap: () => _launchDialer('904-48-84-55'),
                  child: _ntmContainer(
                      'н. Рӯдакӣ\n904-48-84-55')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('900-66-77-78'),
                  child: _ntmContainer(
                      'н. Ваҳдат\n900-66-77-78')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('900-27-81-81'),
                  child: _ntmContainer('н. Рӯдакӣ\n900-27-81-81')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('907-17-36-36'),
                  child: _ntmContainer('ш.Ҳисор\n907-17-36-36')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('938-88-54-23'),
                  child: _ntmContainer(
                      'н. Варзоб\n938-88-54-23')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('937-44-19-42'),
                  child: _ntmContainer(
                      'н. Ҳисор\n937-44-19-42')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('909-19-09-37'),
                  child: _ntmContainer(
                      'н. Шаҳринав\n909-19-09-37')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('907-19-68-68'),
                  child: _ntmContainer(
                      'н. Турсунзода\n907-19-68-68')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('935-64-62-68'),
                  child: _ntmContainer(
                      'н. Файзобод\n935-64-62-68')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('938-29-16-66'),
                  child: _ntmContainer(
                      'н. Роғун\n938-29-16-66')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('988-76-76-64'),
                  child: _ntmContainer(
                      'н. Нуробод\n988-76-76-64')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('937-18-02-89'),
                  child: _ntmContainer(
                      'н. Тоҷикобод\n937-18-02-89')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('987-97-66-13'),
                  child: _ntmContainer(
                      'н. Сангвор\n987-97-66-13')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('223-397'),
                  child: _ntmContainer('н. Рашт\n(8-3131) 223-397')),
              const SizedBox(height: 20),
              GestureDetector(
                  onTap: () => _launchDialer('224-69'),
                  child: _ntmContainer('н. Лахш\n(8-3132) 224-69')),
            ],
          ),
        ),
      ),
    );
  }
}
