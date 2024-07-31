import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khujand15RuPage extends StatefulWidget {
  const Khujand15RuPage({super.key});

  @override
  State<Khujand15RuPage> createState() => _Khujand15RuPageState();
}

class _Khujand15RuPageState extends State<Khujand15RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 18, bottom: 18),
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
              _khatlonContainer(
                  'р. Ашт\nр.И. Сомони-6, здание Исполнительного органа государственной власти\n927-58-19-58'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'р. Ашт, джамоати  Понгоз\nул. Сари бозор\n927-09-26-09'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'г. Гулистан,\nздание Центра здоровья,\nул. Истиклол-70\n933-55-95-62'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'г. Худжанд, ул. Р.Набиев-39\n9 этаж, 908 кабинет, здание\nИсполнительного органа государственной власти\n93-377-73-40'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
