import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Ntm21Page extends StatefulWidget {
  const Ntm21Page({super.key});

  @override
  State<Ntm21Page> createState() => _Ntm21PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Ntm21PageState extends State<Ntm21Page> {
  Widget _ntmContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 140,
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
                onTap: () => _launchDialer('93-506-37-64'),
                  child: _ntmContainer(
                      'ТҶ «Мададгор»\nш. Ваҳдат, кӯчаи Туғдона-3\n907-84-81-91; 935-06-37-64')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('907-84-43-94'),
                  child: _ntmContainer(
                      'ТҶ «Мумтоз»\nн. Рӯдакӣ, кӯчаи Бустон-13\n 907-84-43-94')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
