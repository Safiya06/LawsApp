import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class LawsRuPage extends StatelessWidget {
  const LawsRuPage({super.key,});

  @override
  Widget build(BuildContext context) {
      

    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.background,
          leading: IconButton(
              onPressed: () { Navigator.pop(context,MaterialPageRoute(builder: (context) => const MainPage()));},
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Theme.of(context).colorScheme.primary,
                size: 40,
              )),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child:  Text(
                  textAlign: TextAlign.center,
                  'Закон',
                  style: TextStyle(
                      color: Color(0xff654900),
                      fontSize: MediaQuery.of(context).size.width*0.07,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset('assets/Vector.png')
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                'Предусмотрено ли наказание за насилие в семье в Законе РТ?',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).colorScheme.secondary),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                height: 18,
                decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
                border: Border.all(color: Theme.of(context).colorScheme.primary,width: 3)
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).colorScheme.primary, width: 3),
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                ),
                child: const Text(
                  'Домашнее насилие является тяжким правонарушением, наказуемым положениями Кодекса Республики Таджикистан об административных правонарушениях и Уголовного Кодекса Республики Таджикистан. Согласно Закону Республики Таджикистан «О предупреждении  домашнего насилия» предусмотрены индивидуальные меры по защите потерпевших, выдача охранного ордера органами внутренних дел лицу, совершившему насилие в семье, или лицу, угрожающему его применением на основании заявления потерпевшего. Охранный ордер предписывает специальные ограничительные меры в отношении обидчика и выдается сроком на 30 дней.\n   По заявлению потерпевшего или его законного представителя срок охранного ордера может быть продлен до 60 суток по ходатайству руководителя органа внутренних дел и с согласия прокурора.',
                  style: TextStyle(
                      color: Color(0xFF654900),
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                'Какие права есть у жертв насилия в семье?',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 21,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/car.png',
                          width: 50,
                        ),
                        const SizedBox(
                          height: 75,
                        ),
                        Image.asset(
                          'assets/doctor.png',
                          width: 50,
                        ),
                        const SizedBox(
                          height: 75,
                        ),
                        Image.asset(
                          'assets/low.png',
                          width: 50,
                        ),
                        const SizedBox(
                          height: 75,
                        ),
                        Image.asset(
                          'assets/hospital.png',
                          width: 50,
                        ),
                        const SizedBox(
                          height: 75,
                        ),
                        Image.asset(
                          'assets/hands.png',
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.primary,
                    width: 275,
                    height: 570,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 260,
                          height: 80,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            textAlign: TextAlign.center,
                            'получение медицинской, психологической, правовой и социальной помощи',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 260,
                          height: 80,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            textAlign: TextAlign.center,
                            'получение юридической консультации и иной информации о защите собственной безопасности',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 260,
                          height: 80,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            textAlign: TextAlign.center,
                            'обращение в органы внутренних дел, прокуратуру или суд о привлечении к ответственности лица, совершившего насилие в семье',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 260,
                          height: 100,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            textAlign: TextAlign.center,
                            'помещение по его письменному согласию в центры поддержки, центры или отделения по медицинской и социальной реабилитации пострадавших',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 260,
                          height: 100,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            textAlign: TextAlign.center,
                            'обращение в органы общественной самодеятельности с целью общественного осуждения поведения лица, совершившего насилие в семьи',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 14,
                                fontWeight: FontWeight.w800),
                          )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                // padding: EdgeInsets.all(18),
                width: 360,
                height: 120,
                color: Theme.of(context).colorScheme.secondary,
                child: const Center(
                    child: Text.rich(
                  TextSpan(
    text: 'Жертвы насилия в семье также имеют право на ',
    children: <TextSpan>[
      TextSpan(
        text: 'бесплатную\n',
        style: TextStyle(color: Color(0xffFF7A00)),
      ),
      TextSpan(
        text: 'помощь',
      ),
    ],
  ),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                      textAlign : TextAlign.center
                ),
                    

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';


// class LawsRuPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Қонун '),
//             Icon(Icons.gavel),
//           ],
//         ),
//         backgroundColor: Colors.orange,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Оё барои зӯроварӣ дар оила дар Қонуни ЧТ чӣ ҷазо пешбинӣ карда шудааст?',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue,
//               ),
//             ),
//             SizedBox(height: 16),
//             Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.orange, width: 2),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Text(
//                 'Зӯроварӣ дар оила ҳуқуқвайронкунии ҷиддӣ мебошад, ки муқаррароти Кодекси ЧТ дар бораи ҳуқуқвайронкуниҳои маъмурӣ ва дар Кодекси ҷиноятии ЧТ барои он ҷазо пешбинӣ шудааст. Мувофиқи Қонуни ЧТ «Дар бораи пешгирии зӯроварӣ дар оила», чораҳои информӣ, ҳифзи ҷабрдидагон, додани Амрномаи муҳофизатӣ аз тарафи Шӯъбаҳои корҳои дохилӣ дар асоси аризаи ҷабрдидагон дар бар мегирад. Амрномаи муҳофизатӣ, чораҳои маҳдудкунӣ махсусро нисбат ба хушунатгар таъин мекунанд ва ба муҳлати 15 шабонарӯз дода мешавад. Дар асоси аризаи ҷабрдида ё...',
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   items: [
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.home),
//       //       label: 'Асосӣ',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.help),
//       //       label: 'Кӯмак',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.menu),
//       //       label: 'Дастурамал',
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: Icon(Icons.settings),
//       //       label: 'Танзимот',
//       //     ),
//       //   ],
//       //   selectedItemColor: Colors.orange,
//       //   unselectedItemColor: Colors.grey,
//       //   type: BottomNavigationBarType.fixed,
//       // ),
//     );
//   }
// }
