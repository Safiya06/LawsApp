import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur71Page extends StatelessWidget {
  const Dastur71Page({super.key});

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
                      'Конвенсия дар бораи барҳам додани ҳама гуна шаклҳои табъиз нисбати\nзанон',
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
                      'Санади ҳуқуқии байналмилалие, ки бар хилофи эъломия ё муроҷиатнома мақоми қонунро дошта, иҷрои он аз ҷониби давлатҳое, ки онро имзо намудаанд ва ба тасвиб расондаанд, яъне дар парламентҳои худ маъқул донистаанд (аъзоёни сохторҳои дахлдори байналмилалӣ), ҳатмӣ мебошад. ',
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
                  'Давлатҳо – иштирокчиёни Конвенсия вазифадоранд, ки ғайр аз эълом доштани принсипи баробарии мардҳо ва занҳо дар Конститутсияҳои худ, барои таъмини воқеии ҳуқуқҳои баробар барои занон дар соҳаҳои сиёсӣ, иҷтимоӣ, иқтисодӣ ва фарҳангӣ тадбирҳои махсус андешанд. Конвенсия яке аз ҳуҷҷатҳои асосиест барои таҳияи стратегияҳои беҳтар намудани вазъи занон. Риояи Конвенсияро Кумита оид ба барҳам додани табъиз нисбати занон (Кумитаи CEDAW) таъмин менамояд.',
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
