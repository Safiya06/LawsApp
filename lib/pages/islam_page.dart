import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class IslamPage extends StatelessWidget {
  const IslamPage({super.key});

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
                    child: Column(
                      children: [
                          Text(
                          'Ислом зӯровариро нисбати занону духтарон маҳкум менамояд, чунин кирдорҳо ба асосҳои таълимоти исломӣ мухолиф мебошанд. Аллоҳи бузург никоҳ ва оиларо барои нигоҳ доштани насл, тарбияи инсоният ва ҳифзи ҷомеа аз ҳар гуна фасодкориву бемориҳои гуногун муқаррар намудааст. Худованд муносибати байни зану шавҳарро аз ҳама олиҳимматона ва афзалиятдошта муайян намуда, онҳоро дар заминаи оромиш, муҳаббат ва меҳрубонӣ бунёд сохтааст. Чунончӣ, дар Қуръони карим омадааст: ',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Center(
              child: Stack(
                children: [
                  Container(
                    width: 326,
                    height: 180,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 10,
                    top: 0,
                    child: Container(
                      color: Theme.of(context).colorScheme.secondary,
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        '“Ва аз нишонањои Худо он аст, ки барои шумо аз љинси худатон занон офарид, то бо онњо ором гиред ва дар миёни шумо дўстию мењрубонї пайдо кард. Ба дурустї, дар ин кор барои гурўње, ки андеша мекунанд, нишонањое њаст.” (Сураи Рум, ояти 21)',
                       
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
            SizedBox(height: 20,),
            Text('Меҳри зан барои мард ин оромии дил мебошад, чунончӣ дар Қуръони карим омадааст: ',style: TextStyle(color: Color(0xFF654900),fontSize: 18,fontWeight: FontWeight.w800),),
            SizedBox(height: 20,),
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
                      color: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        '“Ў Он [Худой] аст, ки шуморо аз як нафс офарид ва занашро аз ў пайдо кард, то бо вай ором гирад...” (Сураи Аъроф, ояти 189)',
                       
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
            SizedBox(height: 20,),
            Text('Дар ҷои дигар Аллоҳи бузург мефармояд:',style: TextStyle(color: Color(0xFF654900),fontSize: 18,fontWeight: FontWeight.w800),),
            SizedBox(height: 20,),
              Center(
              child: Stack(
                children: [
                  Container(
                    width: 326,
                    height: 240,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 10,
                    top: 0,
                    child: Container(
                      color: Theme.of(context).colorScheme.secondary,
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        '“Эй мардум, аз Парвардигоратон битарсед, ки шуморо аз як кас биофарид! Ва аз он (як кас) зани ўро офарид; ва аз ин ду (кас) мардуми бисёр ва занони бешумор пароканда сохт. Ва аз Худо битарсед, ки ба (номи) Ў аз якдигар суол мекунед! Ва аз (ќатъи) хешовандї (битарсед!) Ба дурустї ки Худо бар шумо Нигањбон аст.” (Сураи Нисо, ояти 1)',
                       
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
                  'Дар ин оятҳо Худованди карим нишон медиҳад, ки марду занро бидуни бартарияти комили яке бар дигаре аз як сарчашма офаридааст. Ба ин тартиб, ислом тартиботи ноадолатонаи ҷоришударо дар нисбати занон, ки то зуҳури ислом амал мекард, маҳв намуд ва барои занон ҳуқуқҳои барзиёдеро пешбинӣ кард, ки риояи онҳо барои ҳар шахси мӯъмин зарур мебошад. Дар ин радиф, паёмбар боз таъкид намуданд, ки парастории занон набояд дарвозае барои салтанат аз болояшон ва сарчашмаи азияту озор, такаббур ва истисмори онҳо гардад. Ба ҳамсари худ нишон додани меҳру муҳаббат ин маънои хушбахт намудани ӯро дорад. Кӯмаки ҳамдигар дар оиладорӣ – ин нишонаи ахлоқи олитарин мебошад, зеро ки алоқаи байни зану шавҳар ба муҳаббат, ба якдигар ёрӣ расонидан, меҳрубонӣ ва шафқат асос меёбад. Вақте ки модарамон Оиша (р) - ро пурсиданд, ки паёмбари Худо дар хона бо чӣ корҳо машғул буданд? Ҷавоб доданд: “Ба корҳои хона кўмак мерасониданд” Аз ин ҷост, ки кӯмак расонидан дар корҳои хона барои ҳар марди мусалмон ин пайравӣ ба Расули Худо маҳсуб меёбад.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
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
                        // Text(
                        //   textAlign: TextAlign.center,
                        //   'Чӣ гуна ба худ ёрӣ расонид?',
                        //   style: TextStyle(
                        //       color: Theme.of(context).colorScheme.primary,
                        //       fontSize: 31,
                        //       fontWeight: FontWeight.w800),
                        // ),
                        Text('Ҳамеша дар ёд бояд дошт, ки дар муносибатҳои оилавӣ муҳиманд:',style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),),
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
                                  width: 300,
                                  child: const Text(
                                    'Дастгирӣ намудани ҳисси номуси шахсии шавҳар ва зан;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
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
                                  width: 300,
                                  child: const Text(
                                    'Доимо нишон додани иззату ҳурмати ҳамдигар;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
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
                                  width: 300,
                                  child: const Text(
                                    'Кӯшиш намудан ҷиҳати ҷалби таваҷҷуҳи ҳамсар;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
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
                                  width: 300,
                                  child: const Text(
                                    'Дар худ нигоҳ доштан ва хомӯш намудани қаҳру ғазаб, ҷаҳл ва асабоният;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),Row(
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
                                  width: 300,
                                  child: const Text(
                                    'Равона накардани эътибори худ танҳо ба камбуду ғалатҳои ҳамсари худ;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),Row(
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
                                  width: 300,
                                  child: const Text(
                                    'Маломат накардани ҳамсар бо гузаштааш, махсусан бо хатогиҳои қаблӣ;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),Row(
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
                                  width: 300,
                                  child: const Text(
                                    'Пешгирӣ кардани эҳтимоли сар задани низоъҳо бо таваҷҷуҳ зоҳир кардан ба дигар мавзӯъҳои бехавф;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),Row(
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
                                  width: 300,
                                  child: const Text(
                                    'Азоб надодани худ ва ҳамсари худ бо гумонҳои бад ба хиёнат ва бевафоӣ, хомӯш намудани бадгумонӣ ва нигоҳ доштани рашки беасос;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
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
                                  width: 300,
                                  child: const Text(
                                    'Эрод нагирифтан ва нагуфтани суханҳое, ки метавонанд шаъну шарафи ҳамсарро дар назди бегонагон ва ё кӯдакон паст мезанад ва монанди инҳо.',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
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
           
               ],
             ),
           ),
           SizedBox(height: 10,),
           Container(
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('Паёмбари гиромӣ лаънат кардан, дуои бад кардан, нафрин кардан ва истифодаи суханҳои кабеҳро манъ намудаанд. Ба фарди мусалмон таҳқир намудани як нафари дигар (аз ҷумла ҳамсари худ, хешутабори худ ва дигар шахсони шинос ва ношинос), дар ҳаққи онҳо гуфтани ҳар гуна саханҳои қабеҳ нораво мебошад. ',
              style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),
              ),
            ),
           ),SizedBox(height: 50,)
                  
          ],
        ),
      ),
    );
  }
}
