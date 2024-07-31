import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Ntm22Page extends StatefulWidget {
  const Ntm22Page({super.key});

  @override
  State<Ntm22Page> createState() => _Ntm22PageState();
}

class _Ntm22PageState extends State<Ntm22Page> {
  Widget _ntmnContainer(String value) {
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
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _ntmnContainer('М33 «Маркази дастгирии Fap», н. Рашт, ш. Fapm, к. Сомонй-29. 918-21-47-37; 907-74-22-96 matlubar@mail.ru'),
              const SizedBox(height: 20),
              _ntmnContainer('М33 «Хингоб», Химмати айрат, н. Сангвор, к. Сино-36. 918-26-42-22: 987-21-50-26 npo.khingob@mail.ru'),
              const SizedBox(height: 20),
              _ntmnContainer('М33 «Рохнамо», н. Лахш, ш. Вахдат, к. Сомониён-55 . 93-889-57-12 rohnamo@mail.ru'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}