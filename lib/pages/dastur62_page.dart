import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur62Page extends StatelessWidget {
  const Dastur62Page({super.key});

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
                  const Text(
                      textAlign: TextAlign.center,
                      'Ҷазо барои содир намудани зӯроварӣ',
                      style: TextStyle(
                          color: Color(0xFF654900),
                          fontSize: 27,
                          fontWeight: FontWeight.w800)),
                          SizedBox(height: 10,),
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
                    child: const Text(
                      'Кодекси ҷиноятӣ барои кирдорҳои зерини дорои хусусияти зӯроварӣ ҷазо пешбинӣ кардааст: латукӯб (моддаи 116), шиканҷа (моддаи 117), хариду фурӯши одамон (моддаи 130), таҷовуз ба номус (моддаи 138), кирдори зӯроварии дорои хусусяти шаҳвонӣ (моддаи 139), маҷбур намудан ба ҳаракати дорои хусусияти шаҳвонӣ (моддаи 140), алоқаи ҷинсӣ ва дигар ҳаракати дорои хусусияти шаҳвонӣ бо шахсе, ки ҳанӯз ба синни шонздаҳсолагӣ нарасидааст (моддаи 141), ҳаракати бадахлоқона  (моддаи 142), дузанагӣ ё серзанагӣ (моддаи 170), ба фоҳишагӣ ҷалб намудан (моддаи 238), ташкил ё нигаҳдошти фоҳишахонаҳо, даллагӣ ё занҷаллобӣ (моддаи 239) ва ғ.',
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
              // height: 510,
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Бо мақсади ҳалли мушкилоти зӯроварӣ дар оила дар лоиҳаи нави Кодекси ҷиноятии Ҷумҳурии Тоҷикистон, ки аз ҷониби гурӯҳи корӣ бо Фармони Президенти Ҷумҳурии Тоҷикистон № АП-1209 аз 30 апрели соли 2019 таъсис дода шудааст, боби 19 (Ҷиноятҳои ҷиноятӣ нисбати оила ва ноболиғон) бори аввал моддаеро пешбинӣ мекунад, ки ҷазои ҷиноятиро барои хушунати хонаводагӣ муқаррар мекунад.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
