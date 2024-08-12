import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dastur4RuPage extends StatelessWidget {
  const Dastur4RuPage({super.key});

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
                    height: 60,
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
                          '~ Если вы стали свидетелем домашнего насилия или потерпевшая (ий) рассказал (а) вам о нем, ваша поддержка может спасти ей (ему) жизнь. В чрезвычайной ситуации обратитесь в милицию: позвоните по номеру 112 и сообщите о ситуации.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '~ Если вы считаете, что это безопасно для вас, вмешайтесь, чтобы остановить насилие.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Действуйте следующим образом:',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '1. сохраняйте максимальное спокойствие;',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '2. обратитесь за поддержкой к другим свидетелям; ',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '3. попробуйте отвлечь внимание нарушителя, если это возможно.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(height: 25,),
                        Text(
                          '~ Слушайте жертву, верьте ей, поддерживайте ее. Спрашивайте, как она себя чувствует и что вы можете для нее сделать.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '~ Убедите ее, что вернуть себе безопасность и независимость возможно. ',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '~ Объясняйте, что вся ответственность за насилие лежит только на преступнике.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '~ Посоветуйте ей вызывать милицию, если она чувствует себя в опасности,  предложите ей сопровождать.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '~ Поделитесь с ней надежными источниками информации,  чтобы она поняла, как происходит насилие, и узнала о своих правах.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
