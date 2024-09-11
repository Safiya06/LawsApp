import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Vmkb14Page extends StatefulWidget {
  const Vmkb14Page({super.key});

  @override
  State<Vmkb14Page> createState() => _Vmkb14PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Vmkb14PageState extends State<Vmkb14Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 18,right: 18,top: 18,bottom: 18),
      height: 146,
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
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('935-01-05-91'),
                child: _khatlonContainer('ш. Хоруғ\nбинои Раёсати адлияи\nВМКБ, к. Гагарин-14, ошёнаи 3\n935-34-25-99; 935-01-05-91')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-95-73'),
                child: _khatlonContainer('н. Ванҷ\nк. М. Раҳмоншо-36 (Фурудгоҳ)\n933-55-95-73')),
              ],
          ),
        ),
      ),
    );
  }
}
