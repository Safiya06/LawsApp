import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon21Page extends StatefulWidget {
  const Khatlon21Page({super.key});

  @override
  State<Khatlon21Page> createState() => _Khatlon21PageState();
}

class _Khatlon21PageState extends State<Khatlon21Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 222,
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
              _khatlonContainer(
                  'М33 «Марифат», н. Хуросон, чамоати Оби Киик, к. Сомонй-1 93-440-20-64; 93-503-60-42 marifatkhatlon@mail.ru'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'М33 «Дармонбахш», н. Дусти, к. Рудакй-35 93-726-75-57; 918-32-12-88 darmonbahhs@mail.ru'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'М33 «Оксана», н. Ч. Балхй, к. Хайдарова-24 918-698-530: 234-74-23-96 musmanova@mail.ru'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
