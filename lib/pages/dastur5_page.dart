import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur5Page extends StatelessWidget {
  const Dastur5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Theme.of(context).colorScheme.primary,
          iconSize: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
           Center(
              child: Stack(
                children: [
                  Container(
                    width: 326,
                    height: 160,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 10,
                    top: 0,
                    child: Container(
                      width: 330,
                      height: 120,
                      color: Theme.of(context).colorScheme.secondary,
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        'Агар шумо шоҳиди зӯроварӣ шудед, эҳтимолан, масъала барои шумо дар маводи ҷинсӣ дароз аст. Дар ин ҳолат, зарур аст, ки шумо амалиётҳои дароварданӣ ва таъмини ҳифзи худро баромада диҳед:',
                       
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 32,
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
                    child: Column(
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          'Чӣ гуна ба худ ёрӣ расонид?',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 31,
                              fontWeight: FontWeight.w800),
                        ),
                        Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 330,
                                  child: const Text(
                                    'Муайян кардани воситаҳои тамос: Таъмин кардани маълумот ва дастурҳо барои ҳифзи саломати шумо ва тавсияҳои дар бораи барқароршавии ва барномаҳои ба фарзандон ва хомӯшӣ аз таҳаммули тарзиҳои бардоштӣ.',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 330,
                                  child: const Text(
                                    'Тавсияи фаъолии ҳуқуқӣ: Таъмини маслиҳатҳои ёриш ва дастгирии лозимӣ дар рамзи ташкилотҳои ҷомеавӣ ва ҳуқуқӣ, ки метавонад дар пешравии дастурҳо ва тавсияҳои аз тарафи марказҳои ҳуқуқӣ мешавад.',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 330,
                                  child: const Text(
                                    'Ҳимояи дурустии тавсияҳо: Барпо кардани тавсияҳо ва дастурҳо барои дурустӣ ва тавсияи муайян ба шумо ва аҳли шумо.',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            
        ],),
      ),
      
      );
  }
}