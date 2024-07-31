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
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 60,
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
                          '~ Агар Шумо шоҳиди зӯроварӣ шудед ва ё ҷабрдида ба Шумо оид ба ҳолатҳои зӯроварӣ хабар дод, кӯмак ва дастгирии Шумо метавонад ҳаёти ӯро наҷот диҳад. Дар ин ҳолат ба милитсия муроҷиат намоед: ба телефони 112 занг занед ва маълумотро оид ба зӯроварӣ хабар диҳед.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '~ Агар Шумо мутмаинед, ки хатар барои Шумо вуҷуд надорад, барои қатъи зӯроварӣ дахолат кунед.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          ' Ба таври зерин амал кунед:',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '1. то ҳадди имкон оромиро нигоҳ доред;',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '2. барои дастгирӣ ба шоҳидони дигар муроҷиат кунед;',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '3. агар имконпазир бошад, диққати зӯроварро парешон кунед.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(height: 25,),
                        Text(
                          '~ Ҷабрдидаро гуш кунед, ӯро дастгирӣ намоед. Оид ба вазъияташ ва чӣ гуна ёри расонида метавонед, пурсед.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '~ Ӯро бовар кунонед, ки бехатарӣ ва мустақлиятро метавонад баргардонад.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '~ Фаҳмонед, ки барои зӯроварӣ зӯровар ҷавобгар аст.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '~ Маслиҳат диҳед, ки ба милитсия муроҷиат намояд, агар ҳаёташ дар хатар бошад, ӯро ҳамроҳӣ намоед.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          '~ Манбаъҳои боэътимоди иттилоотиро ба ӯ нишон диҳед, то фаҳмад, ки зӯроварӣ чӣ гуна рух медиҳад ва ҳуқуқҳои худро чӣ хел ҳифз карда метавонад.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
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
