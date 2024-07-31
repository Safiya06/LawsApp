import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khujand15Page extends StatefulWidget {
  const Khujand15Page({super.key});

  @override
  State<Khujand15Page> createState() => _Khujand15PageState();
}

class _Khujand15PageState extends State<Khujand15Page> {
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
                  'н. Ашт, кӯчаи И. Сомонӣ-6, бинои МИҲД (Ҳукумат) 927-58-19-58'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Ашт, Ҷамоати деҳоти Понғоз, кӯчаи Сари бозор 927-09-26-09'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Гулистон,бинои  Маркази саломатӣ, кӯчаи Истиқлол-70 933-55-95-62'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Хуҷанд, кӯчаи Р.Набиев-39, ош. 9-ум, ут. 908, бинои МИХД (Ҳукумат) 93-377-73-40'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
