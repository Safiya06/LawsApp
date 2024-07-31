import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon21RuPage extends StatefulWidget {
  const Khatlon21RuPage({super.key});

  @override
  State<Khatlon21RuPage> createState() => _Khatlon21RuPageState();
}

class _Khatlon21RuPageState extends State<Khatlon21RuPage> {
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
                  'РЦЖ «Марифат»\nр. Хуросон, джамоати\nОби Киик, ул. Сомонӣ-1\n934-40-20-64; 935-03-60-42\nmarifatkhatlon@mail.ru'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'РЦЖ «Дармонбахш»\nр. Дӯстӣ, ул. Рӯдакӣ-35\n937-26-75-57; 918-32-12-88\ndarmonbahhs@mail.ru'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'РЦЖ «Оксана»\n р. Дж. Балхи, ул. Ҳайдарова-24\n918-698-530; 234-74-23-96\nmusmanova@mail.ru'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
