import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur1Page extends StatelessWidget {
  const Dastur1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 24,
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
                          'Чӣ гуна зӯроварии оилавиро муайян кард?',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 22,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Зӯроварии оилавӣ чист?',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Зӯроварии оилавӣ – кирдори зиддиҳуқуқии қасдонаи дорои хусусияти ҷисмонӣ, руҳӣ, шаҳвонӣ ё иқтисодӣ, ки дар доираи муносибатҳои оилавӣ аз ҷониби як узви оила нисбат ба дигар узви оида содир шуда, боиси поймол шудани ҳуқуқ ва озодиҳои ӯ, расонидани дарди ҷисмонӣ ё зарар ба саломатии ӯ мегардад, ё таҳдиди расонидани чунин зарарро ба вуҷуд меорад. ',
                          style: TextStyle(
                              color: Color(
                                0xff654900,
                              ),
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
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
                    child: const Column(
                      children: [
                        Text(
                          'Намудҳои зӯроварии оилавӣ:',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 22,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Зӯроварии ҷисмонӣ – кирдори зиддиҳуқуқит қасдонаи як узви оила нисбат ба дигар узви оила, ки дар натиҷаи истифода бурдани қувваи ҷисмонӣ боиси расонидани дарди ҷисмонӣ ё зарарҳ ба саломатӣ шудааст. ',
                          style: TextStyle(
                              color: Color(
                                0xff654900,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              height: 800,
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Зӯроварии шаҳвонӣ – кирдори зиддиҳуқуқии қасдонаи як узви оила, ки ба озодии ҷинсӣ ва дахлнопазирии ҷинсии дигар узви оила таҷовуз мекунад, инчунин ҳаракатҳои дорои хусусияти шаҳвонӣ, ки нисбат ба узви ноболиги оила содир шудаанд.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Зӯроварии руҳӣ – таъсиррасонии қасдонаи руҳӣ, паст задани шаъну эътибори як узви оила аз ҷониби дигар узви оила бо роҳи таҳдид, таҳқир, иръоб (шантаж) ва ё маҷбуркунӣ ба содир намудани ҳуқуқваронкуниҳо ё кирдорҳое, ки барои ҳаёт ва саломатӣ хавфноканд, инчунин ба вайроншавии инкишофи руҳӣ, ҷисмонӣ ё шахсият оварда мерасонад. ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Зӯроварии иқтисодӣ – кирдори зиддиҳуқуқии қасдонаи як узви оила вобаста ба маҳрум сохтан аз манзили истиқоматӣ, хӯрок, либос, молу мулк ё воситаҳое, ки ҷабрдида тибқи қонунгузории Ҷумҳурии Тоҷикистон ва онҳо ҳуқуқ дорад ва ин кирдор метавонад боиси вайрон гардидани солимии ҷисмонӣ, руҳӣ ё сар задани дигар ҳолатҳои ногувор гардад. ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                                    'Оиди ҳолати шуда истода ба шахсони Шуморо дастгирӣ мекарда гуед ва рақамҳои телефони онҳоро сабт карда монед.',
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
                                    'Телефони шахсии худро истифода баред.',
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
                                    'Ҳуҷҷатҳои лозимаро (ҳуҷҷатҳо, шаҳодатномаи таваллуд, кортҳои бонкӣ, шиноснома, калидҳо, доруҳо, либосҳои лозима) дар ҷои дастрас монед.',
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
                                    'Ба фарзандон фаҳмонед, ки дар ҳолатҳои зуроварии оилавӣ ба куҷо муроҷиат намояд.',
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
                                    'Ҷойҳоеро ёбед, ки бо фарзандон онҷо пинҳон шуда метавонед.',
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
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Шавҳар ва ё ҳамсари шумо : ➡️',
                      style: TextStyle(
                          color: Color(0xff654900),
                          fontSize: 29,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  // SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: 416,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'Ба суханон ё рафтори шумо ба таври ғайричашмдошт вокуниш нишон медиҳад, аксар вақт фарёд мезанад?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
