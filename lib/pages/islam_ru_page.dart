import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class IslamRuPage extends StatelessWidget {
  const IslamRuPage({super.key});

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
                    child: Column(
                      children: [
                          Text(
                          'Ислам осуждает насилие в отношении женщин и девочек, подобные действия противоречат принципам учения Ислама. Всемогущий Аллах установил брак и семью для сохранения потомства, воспитания человечества и защиты общества от блуда и различных болезней. Аллах  определил отношения между мужем и женой как самые благородные и приоритетные и построил их на основе мира, любви и доброты. Например, в Священном Коране сказано:',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Center(
              child: Stack(
                children: [
                  Container(
                    width: 326,
                    height: 180,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 10,
                    top: 0,
                    child: Container(
                      color: Theme.of(context).colorScheme.secondary,
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        '«И среди знамений Божиих есть то, что Он создал для вас женщин из рода вашего, чтобы вы могли отдыхать с ними, и сотворил между вами дружбу и доброту. Воистину, в этом — знамения для людей мыслящих». (Сура Рум, аят 21)',
                       
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text('Любовь женщины к мужчине – это мир сердца, как сказано в Священном Коране:',style: TextStyle(color: Color(0xFF654900),fontSize: 18,fontWeight: FontWeight.w800),),
            SizedBox(height: 20,),
              Center(
              child: Stack(
                children: [
                  Container(
                    width: 326,
                    height: 120,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 10,
                    top: 0,
                    child: Container(
                      color: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        '«Он — Тот [Бог], который создал вас из одной души и создал из нее свою жену, чтобы он нашел  покой с ней…» (Сура Аъроф, аят 189)',
                       
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text('В другом месте Всемогущий Аллах говорит:',style: TextStyle(color: Color(0xFF654900),fontSize: 18,fontWeight: FontWeight.w800),),
            SizedBox(height: 20,),
              Center(
              child: Stack(
                children: [
                  Container(
                    width: 326,
                    height: 240,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 10,
                    top: 0,
                    child: Container(
                      color: Theme.of(context).colorScheme.secondary,
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        '«О люди, бойтесь вашего Господа, сотворившего вас из одного человека! И из него (человека) Он создал свою жену; и от этих двух (лиц) рассеял множество людей и бесчисленное количество женщин. И бойтесь Бога, (именем которого) друг друга просите! И (бойтесь!) (прекращения) родства! Воистину, Бог наблюдает за вами! (Сура Ниса, аят 1)',
                       
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
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
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Center(
                child: Text(
                  'В этих аятах Всемогущий Аллах показывает, что Он создал мужчину и женщину из одного источника без полного превосходства одного над другим. Таким образом, ислам упразднил несправедливую систему по отношению к женщинам, существовавшую до появления ислама, и предоставил женщинам дополнительные права, соблюдение которых необходимо каждому верующему. В этой связи Пророк подчеркнул, что забота о женщинах не должна стать причиной превосходства над ними,  высокомерия и источником их страданий и эксплуатации. Проявить привязанность к супруге (у) – значит сделать её (его) счастливым. Помогать друг другу в браке – признак высшей нравственности, ведь отношения между мужем и женой основаны на любви, помощи друг другу, доброте и сострадании. Когда нашу мать Аишу (РА) спросили, что Пророк Божий делал дома? Она ответила: «Он помогал по дому». Следовательно, помощь по дому для каждого мусульманина считается следованием Посланнику Бога.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [
                 Container(
                          padding: const EdgeInsets.all(16),
                          height: 32,
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
                    child: Column(
                      children: [
                        // Text(
                        //   textAlign: TextAlign.center,
                        //   'Чӣ гуна ба худ ёрӣ расонид?',
                        //   style: TextStyle(
                        //       color: Theme.of(context).colorScheme.primary,
                        //       fontSize: 31,
                        //       fontWeight: FontWeight.w800),
                        // ),
                        Text('Всегда следует помнить, что в семейных отношениях важно следующее:',style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),),
                        Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 300,
                                  child: const Text(
                                    'Поддержка чувства чести и достоинства мужа и жены;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 300,
                                  child: const Text(
                                    'Постоянное проявление уважения друг к другу;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 300,
                                  child: const Text(
                                    'Пытаться привлечь внимание супруги;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 300,
                                  child: const Text(
                                    'Сохранение и подавление гнева, злости и нервозности;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 300,
                                  child: const Text(
                                    'Не зацикливаться на недостатках и ошибках супруги;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 300,
                                  child: const Text(
                                    'Не винить супругу в своем прошлом, особенно в её предыдущих ошибках;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 300,
                                  child: const Text(
                                    'Избегать возможностей конфликтов путем сосредоточения внимания на других безопасных темах;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 300,
                                  child: const Text(
                                    'Не терзать себя и супругу подозрениями в измене и неверности, подавлять в себе предрассудки и необоснованную ревность;',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 300,
                                  child: const Text(
                                    'Перед посторонними людьми или детьми не делать замечания и не произносить слов, которые могут унизить достоинство супруги и тому подобное.',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
           
               ],
             ),
           ),
           SizedBox(height: 10,),
           Container(
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('Паёмбари гиромӣ лаънат кардан, дуои бад кардан, нафрин кардан ва истифодаи суханҳои кабеҳро манъ намудаанд. Ба фарди мусалмон таҳқир намудани як нафари дигар (аз ҷумла ҳамсари худ, хешутабори худ ва дигар шахсони шинос ва ношинос), дар ҳаққи онҳо гуфтани ҳар гуна саханҳои қабеҳ нораво мебошад. ',
              style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),
              ),
            ),
           ),SizedBox(height: 50,)
                  
          ],
        ),
      ),
    );
  }
}
