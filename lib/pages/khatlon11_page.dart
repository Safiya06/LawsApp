import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon11Page extends StatefulWidget {
  const Khatlon11Page({super.key});

  @override
  State<Khatlon11Page> createState() => _Khatlon11PageState();
}

class _Khatlon11PageState extends State<Khatlon11Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 60, right: 60, top: 18, bottom: 18),
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
              fontSize: 24, fontWeight: FontWeight.w800, color: Colors.white),
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
                  'н. Чайхун, ш. Дусти, к. 1-уми май 93-398-46-46'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Бохтар, кучаи Борбад-7'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н.Дусти, кучаи Л. Каримов 93-598-15-90'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Кулоб, махаллаи Ш. Шохин-8 918-45-45-96; (8-3322) 246-72'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Левакант (8-3250) 6 14 20; 907 30 56 66'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
