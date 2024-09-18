import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Ntm14Page extends StatefulWidget {
  const Ntm14Page({super.key});

  @override
  State<Ntm14Page> createState() => _Ntm14PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Ntm14PageState extends State<Ntm14Page> {
  Widget _ntmContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 18, bottom: 18),
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
                onTap: () => _launchDialer(''),
                  child: _ntmContainer(
                      'ш. Турсунзода\nбинои Ҳизби халқӣ-демократӣ')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-597-44-00'),
                  child: _ntmContainer(
                      'н. Рашт\nкӯчаи И.Сомонӣ-42\n888-83-90-90; 935-97-44-00')),
            ],
          ),
        ),
      ),
    );
  }
}
