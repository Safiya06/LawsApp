import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur3Page extends StatelessWidget {
  const Dastur3Page({super.key});

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
                    child: const Text.rich(
                  TextSpan(
    text: 'Ҳангоми ба зӯроварии шаҳвонӣ дучор шудан, аввалин қадам ин аст, ки ба ҷои бехатар равед. Агар имконият дошта бошед, аз ҷои ҳодиса дур шавед ва худро ба ҷои бехатар расонед. Баъдан, ба шахсони наздик, дӯстон ё ҳамсоягон дар бораи ҳодиса хабар диҳед. Дар ҳолатҳои фавқулодда, беҳтараш ба рақами таъҷилии ',
    children: <TextSpan>[
      TextSpan(
        text: '112 ',
        style: TextStyle(color: Colors.red),
      ),
      TextSpan(
        text: 'занг занед, то ин ки ёрии фаврӣ гиред.',
      ),
    ],
  ),
                  style: TextStyle(
                      color: Color(0xff654900),
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                      // textAlign : TextAlign.center
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
              height: 600,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Center(
                child: Text(
                  'Баъд аз ин, бояд фавран ба пизишк муроҷиат кунед, ҳатто агар шумо фикр кунед, ки ягон зарари ҷиддӣ надидаед. Ин на танҳо барои гирифтани ёрии тиббӣ, балки барои сабти далелҳо ва гирифтани маълумотномаҳо, ки баъдан барои муроҷиат ба мақомоти ҳуқуқӣ муҳиманд, зарур аст. Ҳангоми ба пизишк рафтан, кӯшиш кунед, ки либосҳои худро иваз накунед ва худро нашӯед, то далелҳо ҳифз шаванд.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(18),
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
                    child: const Text(
                      'Ҳамчунин, муҳим аст, ки ба мақомоти ҳуқуқӣ, яъне милитсия хабар диҳед. Барои ин ба наздиктарин шӯъбаи милитсия рафта, изҳороти расмӣ диҳед. Ин ба шумо имкон медиҳад, ки ҳуқуқҳои худро ҳимоя кунед ва бар зидди ҷинояткор тадбирҳои лозимӣ андешида шаванд.',
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
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 33,
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
                      'Ғайр аз ин, дар Тоҷикистон ташкилотҳо ва марказҳои дастгирӣ барои қурбониёни зӯроварии ҷинсӣ фаъолият мекунанд. Ба ин марказҳо муроҷиат кардан ба шумо кӯмак мерасонад, ки ёрии равонӣ ва ҳуқуқӣ гиред. Маслиҳатчиёни равонӣ метавонанд ба шумо кӯмак кунанд, ки бо таъсироти равонии ҳодиса мубориза баред ва ба ҳолати равонии мӯътадил баргардед.',
                      style: TextStyle(
                          color: Color(0xff654900),
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ),
            
           const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(bottom: 9,top: 9,left: 18,right: 18),
              height: 260,
              width: 328,
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary,borderRadius: const BorderRadius.all(Radius.circular(20))),
                  child: const Text('Ҳамчунин, машваратчиёни ҳуқуқӣ метавонанд ба шумо дар раванди ҳуқуқӣ кӯмак расонанд ва маслиҳатҳои ҳуқуқии заруриро пешниҳод кунанд. Муроҷиат ба ин марказҳо метавонад ба шумо дарёфти ёрии ҳамаҷониба ва дастгирии лозимиро фароҳам оварад.',
                  style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),),
            ),
            const SizedBox(height: 20,),

            Center(
              child: Stack(
                children: [
                  Container(
                    width: 326,
                    height: 150,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 10,
                    top: 0,
                    child: Container(
                      width: 326,
                      height: 160,
                      color: Theme.of(context).colorScheme.secondary,
                      padding: const EdgeInsets.all(16),
                      child: const Center(
                        child: Text(
                          'Ин амалҳо метавонанд барои ҳифзи шумо, таъмини адолат ва барқароршавии равонии шумо кӯмак расонанд.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
