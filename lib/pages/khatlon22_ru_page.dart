import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Khatlon22RuPage extends StatefulWidget {
  const Khatlon22RuPage({super.key});

  @override
  State<Khatlon22RuPage> createState() => _Khatlon22RuPageState();
}

class _Khatlon22RuPageState extends State<Khatlon22RuPage> {
  Widget _khatlonContainer(String value) {
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
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _khatlonContainer('Кризисный центр ОО «Гамхори»\nг. Бохтар, ул. Вахдат-137\n222-78-79\nw.c.ghamkhori@mail.ru'),
              const SizedBox(height: 20),
              _khatlonContainer('ОО «Майрам»\nг. Кӯлоб, ул. Негматов-7\n935-00-01-67'),
              const SizedBox(height: 20),
              _khatlonContainer('ОО «Дилафруз»\nг. Бохтар, ул. Дустии халкхо-68\n918-65-92-93\nngodilafruz@mail.ru'),
              const SizedBox(height: 20),
              _khatlonContainer('ОО «Бонувони фардо»,\nр. Шахритус, ул. И. Сомони-28б\n(8-3240) 228-88; anora.69@mail.ru'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}