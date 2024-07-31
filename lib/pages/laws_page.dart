import 'package:flutter/material.dart';
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
                  'Конун',
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
                'Оё барои зуроварй дар оила дар Конуни ЧТ чазо пешбинй карда шудааст?',
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
                  'Зуроварй дар оила хукуквайронкунии чиддие мебошад, ки мукаррароти Кодекси ЧТ дар бораи хукуквайронкунихои маъмурй ва дар Кодекси чиноятии ЧТ барои он чазо пешбинй шудааст.\nМувофики Конуни ЧТ «Дар бораи пешгирии зуроварй дар оила», чорахои инфиродии хифзи чабрдидагон, додани Амрномаи мухофизатй аз тарафи Шуъбаи корхои дохилй дар асоси аризаи чабрдидаро дар бар мегирад. Амрномаи мухофизати, чорахои махдудкунии махсусро нисбат ба хушунатгар таъин мекунад ва ба мухлати 15 шабонаруз дода мешавад.\nДар асоси аризаи чабрдида ё намояндаи конунии у мумкин аст мухлати Aмрномаи мухофизатй бо дархости сардори макомоти корхои дохили ва розигии прокурор то 30 руз дароз карда шавад.',
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
                'Чабрдидагони зуроварй дар оила кадом хукукхоро доранд?',
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
                            'кумаки тибби, равонй, хукукй ва ичтимоиро гирад',
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
                            'маслихатхои хукукй ва дигар иттилоотро оид ба хифзи амнияташ гирад',
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
                            'ба макомоти корхои дохили, прокуратура ё суд дар бораи ба чавобгарй кашидани шахси зуроварй дар оиларо содирнамуда мурочиат намояд.',
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
                            'бо розигии хаттиаш дар марказхои ёрирасон, марказхо ё бахшхои офиятбахшии тиббию ичтимой барои чабрдидагон чойгир карда шавад',
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
                            'ба макомоти худфаъолияти чамъияти бо максади махкумкунии чамъиятии рафтори шахси зуровари дар оиларо содирнамуда мурочиат намояд',
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

