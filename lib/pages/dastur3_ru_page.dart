import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dastur3RuPage extends StatelessWidget {
  const Dastur3RuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => const MainRuPage()));
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
    text: 'Если вы подверглись сексуальному насилию, первым делом вам нужно отправиться в безопасное место. Если возможно, отойдите подальше от места происшествия и переберитесь в безопасное место. Затем расскажите о случившемся близким, друзьям или соседям. В экстренных случаях лучше позвонить по номеру экстренной помощи ',
    children: <TextSpan>[
      TextSpan(
        text: '112',
        style: TextStyle(color: Colors.red),
      ),
      TextSpan(
        text: ', чтобы получить немедленную помощь.',
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
              // height: 520,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Center(
                child: Text(
                  'После этого следует немедленно обратиться к врачу, даже если вы считаете, что не получили серьезных повреждений. Это необходимо не только для получения медицинской помощи, но и для фиксации доказательств и получения справок, которые затем важны для обращения в судебные органы. Отправляясь к врачу, постарайтесь не переодеваться и не мыться, чтобы сберечь улики.',
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
                      'Также важно проинформировать правоохранительные органы, то есть милицию. Для этого обратитесь в ближайшее отделение милиции. Это позволит защитить ваши права и принять необходимые меры против преступника.',
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
                      'Кроме того, в Таджикистане действуют организации и центры поддержки жертв сексуального насилия. Обращение в эти центры позволяет получить там психологическую и юридическую помощь. Психологические консультанты могут помочь вам преодолеть психологические последствия события.',
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
              width: MediaQuery.of(context).size.width *0.9,
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary,borderRadius: const BorderRadius.all(Radius.circular(20))),
                  child: const Text('Также юрисконсульты могут помочь Вам в судебном процессе и предоставить необходимую юридическую консультацию. Обращение в эти центры может предоставить вам необходимую всестороннюю помощь и поддержку.',
                  style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),),
            ),
            const SizedBox(height: 20,),

            Center(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height * 0.16,
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
                      child: const Center(
                        child: Text(
                          'Эти действия могут помочь защитить вас, обеспечить справедливость и помочь вашему психическому восстановлению.',
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
