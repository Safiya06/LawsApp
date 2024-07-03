import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur6Page extends StatelessWidget {
  const Dastur6Page({super.key});

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
                      'Зӯроварии оилавӣ, як аз муҳимтарин асосҳои адабӣ ва фарҳангии ҷамъиятҳо, мебошад. Он афсонаҳо ва муҳофизатҳои ҳақиқӣ, ки дар мавҷудияти шахс ё гурӯҳи шахсон, намуда мешавад. Онҳо нишон диҳад аз ақли ва муносибатҳои фарзандон ва покзодиён, ки ҳамсоягон ва ҳамдигарон аз воситаҳои иловагии таърифӣ ва тавсияҳо муайян карда мешавад.',
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
                  'Дар бозгашти аломатҳои зӯроварии оилавӣ, афсонаҳо ва ҳақиқатҳои манзилҳои дурустӣ ва фарҳангӣ буда, ки тарғибӣ ва бозӣ дорад. Онҳо муҳофизати ҳайотии оммаҳо ва дурустӣ дорад, ки дар таърих ва китобҳо, бозӣ, ва маслиҳатҳо дар омили адабиёти нашрӣ ва аз зангаҳои ташкилотии ташаббусӣ таъмин мешавад.',
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
                    height: 23,
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
                      'Дар ташкилотҳои марказӣ ва ҷамъияти давлатӣ, идораҳо ва организатсияҳои байналмилалӣ, ки дар ҷои барқарорӣ ва идораҳои муштарӣ гирифта мешавад, муҳофизат ва хизматрасонӣ ба шумо муайян карда мешавад.',
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