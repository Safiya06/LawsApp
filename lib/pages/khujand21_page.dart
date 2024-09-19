import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand21Page extends StatefulWidget {
  const Khujand21Page({super.key});

  @override
  State<Khujand21Page> createState() => _Khujand21PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand21PageState extends State<Khujand21Page> {
  Widget _khatlonContainer(String value) {
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
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('987-50-40-74'),
                child: _khatlonContainer(
                    'ТҶ «Гулрухсор»\n ш. Хуҷанд, н. Р. Набиев-111\n927-80-40-74; 987-50-40-74 '),
              ),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
