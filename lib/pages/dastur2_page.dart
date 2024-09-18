import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur2Page extends StatelessWidget {
  const Dastur2Page({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Тартиб додани накшаи амал хангоми вазъияти бухрони - бехатар ва хар чй зудтар хонаро тарк намудан.\n',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Дар бораи холати зӯроварӣ ба шахсони\nбовариноки худ (дӯстон, хешу табор, наздикон) маълумот дихед.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 30,
              ),Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Рақамҳои телефон ва суроғаҳои марказҳои бӯхронӣ, паногоҳҳо, нозирони минтақавии милитсияро аниқ карда гиред.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 30,
              ),Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Лавозимоти аз хама заруриро (либос, хуҷҷатҳо, доруворӣ, калидҳо) ҷамъ карда, дар ҷои хилват пинҳон кунед.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 30,
              ),Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Агар имконият бошад, ҳолати латукуб, таҳдидҳо ва зӯровариро (бо акс, видео ё диктофон) сабт намоед.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 30,
              ),Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Бо ҳамсояҳо маслиҳат кунед, ки дар сурати зарурат онҳо милитсияро даъват кунанд, ё барои Шумо телефонро дастрас намоянд.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 30,
              ),Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Пас аз омадани милитсия то ҳадди имкон ором бошед. Аз кормандони ҳифзи ҳуқуқ хоҳиш кунед, ки шахси зӯроварро ба шуъба баранд. Баъд аз руй додани воқеа ариза нависед ва онро дар шуъбаи минтақавии милитсия ба қайд дароред. Дар аризаи худ ҳодисаи зӯровариро ба таври муфассал тавзеҳ диҳед.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 30,
              ),Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Агар Шумо таҳти зӯроварии ҷисмонӣ қарор дошта бошед, ба экспертизаи судию тиббӣ (таввасути ҳуҷраи ёрии фаврӣ, дармонгоҳ) барои ба қайд гирифтани зарбу латҳо муроҷиат намуда, аз духтур хоҳиш кунед, ки ҳамаи ҷароҳатҳои гирифташударо қайд кунад.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 30,
              ),Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Агар ба Шумо ва фарзандони Шумо хатар таҳдид кунад ва касе натавонад пеши роҳи хушунатгарро бигирад, беҳтар аст, ки манзилатонро муваққатан тарк намоед. Ба хушунат бо хушунат чавоб надиҳед. Кӯшиш кунед худро ба даст гиред, бо хушунатгар оромона ва бурро суҳбат кунед.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 30,
              ),Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Ором шуда, дар хусуси амалҳои минбаъдаатон қарор қабул кунед. Агар Шумо ба дурустии амалҳои худ шубҳа дошта бошед ё намедонед, чӣ кор кунед, аз ташкилотҳое, ки ба қурбониёни зӯроварӣ кумак мерасонанд, машварат гиред.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: Text(
                  textAlign: TextAlign.center,
                  'ДАР ХОТИР ДОШТА БОШЕД',
                  style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Container(
                    height: 11,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const Text(
                      'Шумо дар зуроварй нисбати худ гунох надоред, гунахгор худи хушунатгар аст ва бо ёрии Шумо вай ба чавобгарй кашида мешавад.',
                      style: TextStyle(
                          color: Color(0xFF654900),
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
