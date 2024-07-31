import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon14Page extends StatefulWidget {
  const Khatlon14Page({super.key});

  @override
  State<Khatlon14Page> createState() => _Khatlon14PageState();
}

class _Khatlon14PageState extends State<Khatlon14Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
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
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _khatlonContainer(
                  'ш. Бохтар, Беморхонаи\nклиникии\nвилоятии ба номи Б. Вохидов\n918-69-45-64; 832-22-30-63'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Кулоб, Таввалуд-\nхонаи ш. Кулоб\n985-09-63-20'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Панч, Беморхонаи\nмарказии нохияви\n900-60-15-49'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Фархор, Беморхонаи\nмарказии нохияви\n900-60-15-49\n880-38-35-35'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Ёвон, Беморхонаи\nмарказии нохияви\n901-00-99-07'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Восеъ, Беморхонаи\nмарказии нохияви\n98-537-53-27'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. А.Чоми, Беморхонаи\nмарказии нохияви\n93-531-08-50'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Шахритус, Беморхонаи\nмарказии нохияви\n93-420-05-07'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
