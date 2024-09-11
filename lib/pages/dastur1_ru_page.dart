import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dastur1RuPage extends StatelessWidget {
  const Dastur1RuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const MainRuPage()));
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
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: 24,
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
                          'Как определить насилие в семье?',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 22,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Что такое домашнее насилие?\nНасилие в семье – умышленное противоправное действие или угроза совершения деяния физического, психического, экономического и сексуального характера, а также пренебрежительное отношение  одного члена семьи к другому члену семьи, нарушающее или могущее нарушить права и свободы этих лиц, унижают их  достоинство, наносят  физический или моральный вред,  приводят к принудительному или умышленному лишению свободы.',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 17,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                    child: const Column(
                      children: [
                        Text(
                          'Виды насилия в семье:',
                          style: TextStyle(
                              color: Color(0xff654900),
                              fontSize: 22,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          'Физическое насилие в семье - умышленное противоправное деяние одного члена семьи по отношению к другому члену семьи, в результате применения физической силы, которое становится причиной нанесения физической боли или вреда его здоровью.',
                          style: TextStyle(
                              color: Color(
                                0xff654900,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              // height: 860,
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Сексуальное насилие в семье - умышленное противоправное деяние одного члена семьи по отношению к другому члену семьи, посягающее на половую неприкосновенность и половую свободу человека, а также действия сексуального характера, совершаемые в отношении несовершеннолетнего члена семьи.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Психологическое насилие в семье – угроза физического, сексуального, экономического насилия,  психологическое воздействие, унижение чести и достоинства лиц, совместно проживающих с ведением общего хозяйства, к совершению правонарушений или деяний, которые приводят к нарушению психологического, физического или личностного развития, нарушению прав и свобод.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Экономическое насилие в семье - умышленное противоправное деяние одного члена семьи по отношению к другому члену семьи с целью лишения его жилья, пищи, одежды, имущества или средств, на которые потерпевший имеет предусмотренное законодательством Республики Таджикистан право, и это деяние может вызвать нарушение физического или психического здоровья или повлечь за собой иные неблагоприятные условия.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                          textAlign: TextAlign.center,
                          'Как можно помочь себе',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 31,
                              fontWeight: FontWeight.w800),
                        ),
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
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: const Text(
                                    'Запишите в свой телефон номера телефонов лиц, кто может помочь Вам.',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 18,
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
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: const Text(
                                    'Важные документы (паспорт, свидетельство о рождении, банковские карты,  ключи, лекарства, необходимую одежду) оставьте в доступном месте.',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 18,
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
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: const Text(
                                    'Объясните детям, чтобы в случаях насилия, куда они могут обратиться.',
                                    style: TextStyle(
                                        color: Color(0xff654900),
                                        fontSize: 18,
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
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Супруг или Ваш сожитель : ',
                      style: TextStyle(
                          color: Color(0xff654900),
                          fontSize: 29,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  // SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Неадекватно реагирует на ваши слова или поведение и часто кричит?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Винит ли он вас или ваших детей в конфликтах, в своих насильственных действиях?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Причиняет ли он вред вам или вашим детям, грубит вам, бьет вас?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Он обращается с вами так, что вы скрываете это от родственников и друзей, потому что вам стыдно?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Не принимает во внимание ваши слова, не ценит их, смеется над вашими действиями и достижениями?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Он пугает тебя самоубийством, если ты скажешь, что хочешь уйти?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Он часто ревнует и демонстрирует вам свои права?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Контролирует вас: хочет знать, чем вы занимаетесь, не разрешает встречаться с друзьями или родственниками, не дает денег, забирает компьютер, телефон, машину или другие документы?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Он шантажирует вас и угрожает расправой вам и вашим детям?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Умышленно повредили свое имущество?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Если он бьет вас в состоянии алкогольного или наркотического опьянения, а потом оправдывает свои действия опьянением?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      )),
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
