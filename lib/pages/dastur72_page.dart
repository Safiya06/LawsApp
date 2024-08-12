import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur72Page extends StatelessWidget {
  const Dastur72Page({super.key});

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
            Column(
              children: [
                const Text(
                    textAlign: TextAlign.center,
                    'Эъломияи Пекин ва Нақшаи амалиёт',
                    style: TextStyle(
                        color: Color(0xFF654900),
                        fontSize: 22,
                        fontWeight: FontWeight.w800)),
                const SizedBox(
                  height: 10,
                ),
                Container(
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.primary),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Конференсияи чоруми умумиҷаҳонӣ оид ба вазъи занон соли 1995 дар Пекин баргузор гардид. Сарфи назар аз он ки аз конференсияи Мехико (соли 1975) сар карда  барои беҳтар намудани вазъи занон ва васеъ намудани дастрасии онҳо ба захираҳо саъю кӯшишҳои зиёде ба кор бурда шуданд, онҳо ба заминаҳои сохтории нобаробарӣ дар муносибатҳои байни занону мардон дахл накарданд.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              ),
            ),
                        ),
                Padding(
                  padding: const EdgeInsets.only(top: 18,left: 18, right: 18),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    height: 43,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 3),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Container(
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
                      'Давлатҳо Эъломияи Пекин ва Нақшаи амалиётро қабул намуда,  уҳдадор шуданд, ки  ки ҷанбаҳои гендериро дар ҳамаи ниҳодҳои давлатӣ, дар стратегияҳо, нақшаҳо ва равандҳои қабули қарорҳо ҷорӣ менамоянд. Ин маънои онро дошт, ки то қабули қарорҳо ё дар аввали иҷрои нақшаҳо оқибатҳои онҳоро ҳам барои занон ва ҳам барои мардон таҳлил кардан зарур аст. Диққати асосӣ на ба занҳо ва вазъи онҳо дар ҷомеа, балки ба бозсозии ниҳодҳо ва раванди қабули қарорҳои сиёсӣ ва иқтисодӣ дар тамоми ҷомеа равона карда шуд. Конференсияи Пекин ҳам аз ҷиҳати миқёс ва миқдори зиёди намояндагии мамлакатҳо ва ҳам аз ҷиҳати натиҷанокӣ басо нодир буд. Он дар таърих калонтарин ҷамъомади намояндагони ҳукумат ва ҷомеаи шаҳрвандӣ буд, ки дар он 17000 вакил аз 189 мамлакат иштирок доштанд.',
                      style: TextStyle(
                          color: Color(0xff654900),
                          fontSize: 21,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(46)),
                    child: const Center(child: Text(textAlign: TextAlign.center,'https://www.un.org/ru/documents/decl_conv/declarations/womdecl.shtml',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w800),)),
              ),
            ),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
