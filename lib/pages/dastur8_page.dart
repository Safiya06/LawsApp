import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur8Page extends StatelessWidget {
  const Dastur8Page({super.key});

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
                    height: 120,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 10,
                    top: 0,
                    child: Container(
                      width: 330,
                      height: 120,
                      color: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        'Агар шумо аз синни 18 сола поён ҳастед, метавонед худро аз зӯроварии оилавӣ ҳимоя кунед пас аз чунин амалҳо:',
                       
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
                                    'Тавсияи ҳуқуқӣ ва ёри: Шумо метавонед ба марказҳои маълумотӣ ва ҳуқуқӣ муроҷиат кунед, ки тавсияҳо ва дастурҳои муайян барои ҳимояи зӯроварии оилавӣ пешниҳод кунанд.',
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
                                    'Маълумотҳои шахсӣ ва семьявӣ: Барои муайян кардани зӯроварии оилавӣ, шумо бояд маълумотҳои шахсӣ, маълумоти паспорти, ва маълумоти шахсӣ додани дошта бошед.',
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
                                    'Муҳофизат ва ҳифзи зӯроварии оилавӣ: Метавонед дархости кардани ҳифзи зӯроварии оилавӣ бо маслиҳати юридикӣ, медицини ва социалӣ иҷро намоед.',
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
                                    'Маслиҳат ва дастгирии юридикӣ: Шумо метавонед маслиҳат ва дастгирии юридикӣ аз муайян кардани хусусиятҳои оилавӣ ё маслиҳатҳои дигар кор бароед.',
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
      ),);
  }
}