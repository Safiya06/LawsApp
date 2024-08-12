import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dastur63RuPage extends StatelessWidget {
  const Dastur63RuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Theme.of(context).colorScheme.primary,
          iconSize: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 25,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 3),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 3),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Наказание за совершение насилия',
                          style: TextStyle(
                              fontSize: 27,
                              color: Color(0xFF654900),
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Согласно  Уголовному кодексу Республики Таджикистан за совершение насилия предусматриваются наказания. Уголовный кодекс предусматривает наказание за следующие деяния, которые носят насильственный характер: побои (статья 116), истязания (статья 117), торговля людьми (статья 130), изнасилование (статья 138), насильственные действия сексуального характера (статья 139), понуждение к действиям сексуального характера (статья 140), половое сношение и иные действия сексуального характера с лицом, не достигшим шестнадцати лет (статья 141), развратные действия (статья 142), двоеженство или многоженство (статья 170), вовлечение в занятие проституцией (статья 238), организация или содержание притонов, сводничество или сутенерство (статья 239) и т.п.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 22,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Center(
                child: Text(
                  'С целью решения проблем насилия в семье в новом проекте Уголовного кодекса РТ разработанном рабочей группой созданной Указом Президента РТ, №АП-1209 от 30 апреля 2019 года в главе 19 (Уголовные правонарушения против семьи и несовершеннолетних) впервые предусмотрена статья, устанавливающая уголовное наказание за насилие в семье.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
