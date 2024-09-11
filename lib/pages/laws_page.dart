import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';

class LawsPage extends StatelessWidget {
  const LawsPage({super.key,});

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
                  'Қонун',
                  style: TextStyle(
                      color: const Color(0xff654900),
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
                'Оё барои зӯроварӣ дар оила\nдар Қонуни ҶТ ҷазо пешбинӣ шудааст?',
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
                // width: 500,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).colorScheme.primary, width: 3),
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                ),
                child: const Text(
                  'Зӯроварӣ дар оила ҳуқуқвайронкунии ҷиддие мебошад, ки тибқи муқаррароти Қодекси ҶТ дар бораи ҳуқуквайронкуниҳои маъмурӣ ва дар Кодекси ҷиноятии ҶТ барои он ҷазо пешбинӣ шудааст.\n\n  Мувофиқи Қонуни ҶТ «Дар бораи пешгирии зӯроварӣ дар оила», чораҳои инфиродии ҳифзи ҷабрдидагон, додани Амрномаи муҳофизатӣ аз тарафи Шӯъбаи корҳои дохилӣ дар асоси аризаи ҷабрдида пешбинӣ шудааст. \n\n Амрномаи муҳофизатӣ, чораҳои маҳдудкунии махсусро нисбат ба хушунатгар тайъин мекунад ва ба муҳлати 30 шабонарӯз дода мешавад. \n\n  Дар асоси аризаи ҷабрдида ё намояндаи қонунии ӯ мумкин аст, муҳлати амрномаи муҳофизатӣ бо дархости сардори мақомоти корҳои дохилӣ ва розигии прокурор то 60 рӯз тамдид карда шавад.',
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
                'Ҷабрдидагони зӯроварӣ\nдар оила кадом ҳуқуқҳоро доранд?',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 21,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                      Image.asset(
                        'assets/car.png',
                        width: 50,
                      ),
                       SizedBox(
                        height: MediaQuery.of(context).size.height*0.07
                      ),
                      Image.asset(
                        'assets/doctor.png',
                        width: 50,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.07
                      ),
                      Image.asset(
                        'assets/low.png',
                        width: 50,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.08
                      ),
                      Image.asset(
                        'assets/hospital.png',
                        width: 50,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.15
                      ),
                      Image.asset(
                        'assets/hands.png',
                        width: 50,
                      ),
                    ],
                  ),
                  Container(
                    color: Theme.of(context).colorScheme.primary,
                    width: 275,
                    // height: 570,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 260,
                          height: MediaQuery.of(context).size.height*0.101,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            textAlign: TextAlign.center,
                            'кумаки тиббӣ, равонӣ, ҳуқуқӣ ва иҷтимоиро гирад',
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
                          height: MediaQuery.of(context).size.height*0.101,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            textAlign: TextAlign.center,
                            'маслиҳатҳои хуқуқӣ ва дигар иттилоотро\nоид ба ҳифзи амнияташ гирад',
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
                          height: MediaQuery.of(context).size.height*0.125,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            textAlign: TextAlign.center,
                            'ба мақомоти корҳои дохилӣ, прокуратура ё суд дар бораи ба ҷавобгарӣ кашидани шахси зӯроварӣ\nдар оиларо содирнамуда муроҷиат намояд.',
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
                         height: MediaQuery.of(context).size.height*0.15,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            textAlign: TextAlign.center,
                            'бо розигии хаттиаш дар марказҳои ёрирасон,\nмарказҳо ё бахшҳои офиятбахшии тиббию\nиҷтимоӣ барои ҷабрдидагон ҷойгир карда шавад',
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
                          height: MediaQuery.of(context).size.height*0.15,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            textAlign: TextAlign.center,
                            'ба мақомоти худфаъолияти ҷамъиятӣ бо мақсади\nмаҳкумкунии ҷамъиятии рафтори шахси зӯроварӣ\nдар оиларо содирнамуда муроҷиат намояд',
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
                padding: EdgeInsets.all(18),
                width: MediaQuery.of(context).size.width*0.9,
                color: Theme.of(context).colorScheme.secondary,
                child: const Center(
                    child: Text.rich(
                  TextSpan(
    text: 'Ҷабрдидагони зӯроварӣ дар оила ҳамчунин ҳуқуқ ба гирифтани кумак ба тариқи ',
    children: <TextSpan>[
      TextSpan(
        text: 'ройгон ',
        style: TextStyle(color: Color(0xffFF7A00)),
      ),
      TextSpan(
        text: 'доранд.',
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

