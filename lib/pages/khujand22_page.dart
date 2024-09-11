import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand22Page extends StatefulWidget {
  const Khujand22Page({super.key});

  @override
  State<Khujand22Page> createState() => _Khujand22PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand22PageState extends State<Khujand22Page> {
  Widget _khujandContainer(String value) {
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
                onTap: () => _launchDialer('92-777-90-15'),
                  child: _khujandContainer(
                      'M33 «ASTI»\n ш. Хуҷанд, кӯчаи Шӯро-24\n 927-77-90-15')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-545-19-20'),
                  child: _khujandContainer(
                      'М33 «Кӯҳсор»\nн. Айнӣ, кӯчаи Рӯдакӣ-55\n927-62-40-40; 935-45-19-20')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-809-29-28'),
                  child: _khujandContainer(
                      'М33 «Занони Шарқ»\nш. Панҷикент, кӯчаи Рӯдакӣ-85\n928-09-29-28')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('989-10-72-44'),
                  child: _khujandContainer(
                      'М33 «Маркази дастгирӣ»\nш. Исфара, ҷамоати Ворух\nкӯчаи Рӯдакӣ-123А\n989-10-72-44 ')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-836-45-45'),
                  child: _khujandContainer(
                      'М33 «Занон барои адолат»\nш.Хуҷанд, кӯчаи Кирмоншо-1\n938-36-45-45')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-70-04-06'),
                  child: _khujandContainer(
                      'М33 «Умед»\nш. Исфара , кӯчаи Марказӣ-22\n927-70-04-06')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-80-35-54'),
                  child: _khujandContainer(
                      'М33 «Занҳо зидди зӯроварӣ»\nн. Истаравшан\nкӯчаи И. Сомонӣ-186\n988-65-31-65; 918-80-35-54 ')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
