import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur4Page extends StatelessWidget {
  const Dastur4Page({super.key});

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
                    child: const Text(
                      'Дастурамалҳо дар формати видео метавонанд муайян кунанд, ки ба шахсони ҷабрдидагоии зӯроварии ҷинсӣ тавсияҳо ва маълумоти муҳимро пешниҳод кунанд. Видеоҳо дар дастурамалҳо бояд тавсияҳои гардонӣ дода шаванд, ки ҷабрдида ба ҷои бехатар рафтан ва амалҳои дуруст намудани таълимӣ ва тавсия дода шавад.',
                      style: TextStyle(
                          color: Color(0xff654900),
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
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
              height: 460,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Center(
                child: Text(
                  'Як аз муҳимтарин амалҳо, ки дар видео дарёфт карда мешаванд, ин аст, ки ҷабрдида бояд зудтар аз ҷои ҳодиса дур шавад ва ҳаргиз ҷасад бехатар шавад. Баъд аз ҳамин, видеоҳо бояд тавсия дода шаванд, ки ҷабрдида дар ҳолатҳои фавқулодда ба рақами таъҷилии 112 занг занед, то ёрии фаврӣ дархост карда шавад.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 30,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 3),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 3),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Дар охир, маълумот ва тавсияҳо дар бораи ташкилотҳо ва марказҳои дастгирӣ, ки барои ҷабрдидагон дастгоҳи равонӣ мебошанд, дода шавад. Ин марказҳо метавонанд ба шахсони ҷабрдидагоии зӯроварии ҷинсӣ ёрии равонӣ ва ҳуқуқӣ расонанд, ки бо ҷабрдидагон ҳавасманд карда шаванд ва тавсияҳои муҳимро пешниҳод кунанд.',
                      style: TextStyle(
                          color: Color(0xff654900),
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ),
          ],
          
        ),
      ),
    );
  }
}