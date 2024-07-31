import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur7Page extends StatelessWidget {
  const Dastur7Page({super.key});

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
                        'Барои шиносоии зӯроварии оилавӣ ва муайян кардани идентитети шахсӣ, шумо метавонед он кадоми амалҳоиро иҷро намоед:',
                       
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
                                    'Гузаштавӣ ва алоқа: Муҳим аст, ки шумо маълумоти зарур дар бораи гузаштавӣ ва алоқаи аз пасшиносон ва аҳли шумо, ки метавонанд маълумот доданд, дар ҷавобгӯӣ ба саволҳо ва аз рӯйдодҳои худ гузошта шаванд.',
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
                                    'Дастгирӣ ва тавсияҳо: Шумо метавонед ба марказҳои маълумотӣ ва таълимии ҳайотии муҳофизатӣ муроҷиат кунед. Онҳо метавонанд тавсияҳо ва дастурҳои барои гузоштан ва ҳифзи зӯроварии оилавӣ пешниҳод кунанд.',
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
                                    'Шуносоии маълумоти ҳуқуқӣ: Барои муайян кардани зӯроварии оилавӣ, шумо бояд маълумотҳои паспорти, маълумоти шахсӣ, ҳуқуқҳои амрӯзӣ, ва иборати маълумоти таҳти кор кунед.',
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
                                    'Маслиҳат ва дархост: Бо маслиҳати маҳаллиён, марказҳои медицини, юридикӣ, ва ҷамъиятӣ, шумо метавонед дархости кардани зӯроварии оилавӣ ё маслиҳатҳои дигарро ба даст оваред.',
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

                  Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 11,
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
                       child: 
                        const Text(
                          'Иловагӣ, муайян кардани зӯроварии оилавӣ тавонист муҳимати муҳимро бармегардонад, ки ба ҳифзи маънавӣ ва ҷисмонӣ шумо муайян карда мешавад ва тавсияҳои дар бораи рафтани бо ташкилотҳо ва идораҳои муштарӣ медиҳад.',
                          style: TextStyle(
                              color: Color(
                                0xff654900,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        )
                  ),
                ],
              ),
                ],
              ),
            ),
            
        ],),
      ),);
  }
}