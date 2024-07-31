import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur71RuPage extends StatelessWidget {
  const Dastur71RuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      'Конвенция о ликвидации всех форм дискриминации в отношении женщин',
                      style: TextStyle(
                          color: Color(0xFF654900),
                          fontSize: 17,
                          fontWeight: FontWeight.w800)),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 43,
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
                    child: Text(
                      'Международный правовой документ, который, в отличие от декларации или обращения, имеет статус закона, обязательного для исполнения теми государствами (членами соответствующих международных структур), которые их подписали и ратифицировали - то есть одобрили в своих парламентах.',
                      style: TextStyle(
                          color: Color(0xff654900),
                          fontSize: 21,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Государства -участники Конвенции обязаны, помимо провозглашения принципа равенства мужчин и женщин в своих Конституциях, принимать специальные меры в политической, социальной, экономической и культурной сферах для реального обеспечения равных прав для женщин. Конвенция является одним из базовых документов для разработки стратегий по улучшению положения женщин. Обеспечение соблюдения Конвенции осуществляется Комитетом по ликвидации дискриминации женщин (Комитет CEDAW).',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Container(
                height: 45,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(46)),
                    child: Center(child: Text(textAlign: TextAlign.center,'https://www.ohchr.org/ru/treaty-bodies/cedaw',style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w800),)),
              ),
            ),
            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
