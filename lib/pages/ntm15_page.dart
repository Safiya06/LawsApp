import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Ntm15Page extends StatefulWidget {
  const Ntm15Page({super.key});

  @override
  State<Ntm15Page> createState() => _Ntm15PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Ntm15PageState extends State<Ntm15Page> {
  Widget _ntmContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 3, bottom: 3),
      // height: MediaQuery.of(context).size.height*0.19,
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
                onTap: () => _launchDialer('935-26-69-02'),
                  child: _ntmContainer(
                      'ш. Ваҳдат\n Беморхонаи марказии шаҳри, кӯчаи 20-солагии Истиқлолият\n935-26-69-00; 907-94-81-32; 935-26-69-02')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('988-43-99-66'),
                  child: _ntmContainer(
                      'н. Рашт\nБеморхонаи марказии ноҳия\nкӯчаи И. Сомонӣ-14\n985-98-52-01; 918-21-55-05;\n988-64-44-65; 988-43-99-66')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('907-52-51-04'),
                  child: _ntmContainer(
                      'н. Ҳисор\nБеморхонаи марказии\nноҳиявӣ\n907-52-51-04')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('904-02-25-15'),
                  child: _ntmContainer(
                      'н. Рӯдакӣ\nБеморхонаи марказии\nноҳиявӣ\n904-02-25-15')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
