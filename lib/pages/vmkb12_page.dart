import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Vmkb12Page extends StatefulWidget {
  const Vmkb12Page({super.key});

  @override
  State<Vmkb12Page> createState() => _Vmkb12PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Vmkb12PageState extends State<Vmkb12Page> {
  Widget _vmkbContainer(String value) {
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
              fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white),
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
                onTap: () => _launchDialer('507-77-04-32'),
                  child:
                      _vmkbContainer('ВМКБ\n507-77-04-32')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-85-40-01'),
                  child: _vmkbContainer(
                      'ш. Хоруғ\n935-85-40-01')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('934-80-13-44'),
                  child: _vmkbContainer(
                      'н. Дарвоз\n934-80-13-44')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('939-24-29-34'),
                  child: _vmkbContainer(
                      'н. Ванҷ\n939-24-29-34')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('937-71-05-53'),
                  child: _vmkbContainer(
                      'н. Роштқалъа\n937-71-05-53')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('938-12-33-22'),
                  child: _vmkbContainer(
                      'н. Рӯшон\n938-12-33-22')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('934-08-66-31'),
                  child: _vmkbContainer(
                      'н. Ишқошим\n934-08-66-31')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('501-55-19-11'),
                  child: _vmkbContainer(
                      'н. Шуғнон\n501-55-19-11')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('212-32'),
                  child: _vmkbContainer(
                      'н. Мурғоб\n(8-3554) 212-32;')),
            ],
          ),
        ),
      ),
    );
  }
}
