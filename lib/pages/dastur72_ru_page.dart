import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dastur72RuPage extends StatelessWidget {
  const Dastur72RuPage({super.key});

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
            Column(
              children: [
                const Text(
                    textAlign: TextAlign.center,
                    'Пекинская декларация и Платформа действий',
                    style: TextStyle(
                        color: Color(0xFF654900),
                        fontSize: 22,
                        fontWeight: FontWeight.w800)),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Четвёртая Всемирная конференция по положению женщин состоялась в Пекине в 1995 году. Несмотря на то, что усилия, которые предпринимались начиная с конференции в Мехико в 1975 году, помогли улучшить положение женщин и расширить их доступ к ресурсам, они не коснулись структурной основы неравенства в отношениях между мужчинами и женщинами.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    height: 43,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 3),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Container(
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
                    child: const Text(
                      'Принимая Пекинскую платформу действий, правительства взяли на себя обязательства по эффективному включению гендерного аспекта во все государственные институты, стратегии, планирование и процесс принятия решений. Это означало, что до принятия решений или начала реализации планов всегда необходимо проводить анализ их последствий как для женщин, так и для мужчин. Основное внимание больше не сосредоточивалось на женщинах и их положении в обществе, а было перенесено на перестройку институтов и процесса принятия политических и экономических решений в обществе в целом. Пекинская конференция имела большой успех как в смысле масштаба и представленности на ней огромного количества стран, так и в плане результативности. Это было самое большое в истории собрание представителей правительств и НПО, на котором присутствовали 17000 делегатов, представители 189 стран.',
                      style: TextStyle(
                          color: Color(0xff654900),
                          fontSize: 21,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(46)),
                child: const Center(
                    child: Text(
                  textAlign: TextAlign.center,
                  'https://www.un.org/ru/documents/decl_conv/declarations/womdecl.shtml',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                )),
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
