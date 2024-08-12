import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Ntm16RuPage extends StatefulWidget {
  const Ntm16RuPage({super.key});

  @override
  State<Ntm16RuPage> createState() => _Ntm16RuPageState();
}

class _Ntm16RuPageState extends State<Ntm16RuPage> {
  Widget _ntmnContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 18,bottom: 18),
      height: 208,
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
                context, MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _ntmnContainer('р. Шахринав, здание Центра юстиции, ул. И.Сомони\n933-55-36-39'),
              const SizedBox(height: 20),
              _ntmnContainer('г.Вахдат, здание Центра юстиции, п.Рудаки\n933-55-59-94'),
              const SizedBox(height: 20),
              _ntmnContainer('р. Нурабад\nздание «Тоҷиксуғурта»,\nул. И. Ҳалимов-11\n933-55-78-20'),
              const SizedBox(height: 20),
              _ntmnContainer('р. Таджикабад\nздание Микрофинансового банка\nул. Сомони-21\n933-55-49-87'),
              const SizedBox(height: 20),
              _ntmnContainer('р. Файзабад, здание\nИсполнительного органа государственной власти-2, ул. И. Сомони-49\n935-54-32-19'),
              const SizedBox(height: 20),
              _ntmnContainer('г. Гисар \nздание Исполнительного органа государственной власти\nул. И. Сомони, 1-ый этаж, 10,  933-55-95-72)'),
              const SizedBox(height: 20),
              _ntmnContainer('р. Рудаки\nг. Сомониён, ул. И. Сомони\nздание центра юстиции (1 эаж)\n930-10-01-67'),
              const SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}
