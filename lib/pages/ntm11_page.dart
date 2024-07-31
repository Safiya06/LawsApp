import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Ntm11Page extends StatefulWidget {
  const Ntm11Page({super.key});

  @override
  State<Ntm11Page> createState() => _Ntm11PageState();
}

class _Ntm11PageState extends State<Ntm11Page> {
  Widget _ntmContainer(String value) {
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
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _ntmContainer('ш. Турсунзода, к. Б. Гафуров, 22. (+9923130) 22-841'),
              const SizedBox(height: 20),
              _ntmContainer('н. Рудаки, ш. Сомониён, к. Бустон-65. (8-3137) 22-210'),
              const SizedBox(height: 20),
              _ntmContainer('ш. Точикобод, к. Сомониён, 12. (8-3154) 21-525'),
              const SizedBox(height: 20),
              _ntmContainer('ш. Poгун, к. Норакиён 54/1. (8-3134) 21-358'),
              const SizedBox(height: 20),
              _ntmContainer('ш. Шахринав，к. М. Турсунзода, 71. (+992 3155) 31-494; 32-106'),
              const SizedBox(height: 20),
              _ntmContainer('ш. Файзобод, к. И. Сомонй, 40. (8-3135) 32-234'),
              const SizedBox(height: 20),
              _ntmContainer('н. Лахш, ш. Вахдат, к. Сомониён-33. (8-3132) 22-534'),
              const SizedBox(height: 20),
              _ntmContainer('н. Сангвор, к. Восеъ (8-3156) 22-157'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}