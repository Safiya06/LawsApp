import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Ntm16Page extends StatefulWidget {
  const Ntm16Page({super.key});

  @override
  State<Ntm16Page> createState() => _Ntm16PageState();
}

class _Ntm16PageState extends State<Ntm16Page> {
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
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _ntmnContainer('н. Шаҳринав, бинои Маркази адлия, кӯчаи И.Сомонӣ 933-55-36-39'),
              const SizedBox(height: 20),
              _ntmnContainer('ш.Ваҳдат, бинои Маркази адлия, х.Рудакӣ 933-55-59-94'),
              const SizedBox(height: 20),
              _ntmnContainer('н. Нуробод, бинои «Тоҷиксуғурта», кӯчаи И. Ҳалимов-11 933-55-78-20'),
              const SizedBox(height: 20),
              _ntmnContainer('н. Тоҷикобод, бинои Бонки молиявии хурд, кӯчаи Сомонӣ-21 933-55-49-87'),
              const SizedBox(height: 20),
              _ntmnContainer('н. Файзобод, бинои МИҲД-2. кӯчаи И. Сомонӣ-49 935-54-32-19'),
              const SizedBox(height: 20),
              _ntmnContainer('ш. Турсунзода, бинои САҲШ, маҳ. 2 933-55-59-93'),
              const SizedBox(height: 20),
              _ntmnContainer('ш. Ҳиссор, кӯчаи И. Сомонӣ, ошёнаи 1-ум, 10, бинои МИҲД 933-55-95-72'),
              const SizedBox(height: 20),
              _ntmnContainer('н. Рӯдакӣ, ш. Сомониён, кӯчаи И. Сомонӣ, бинои Маркази адлия (ошёнаи 1-ум) 930-10-01-67'),
              const SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}
