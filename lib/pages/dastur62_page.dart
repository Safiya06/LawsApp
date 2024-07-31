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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('Тоҷикӣ', style: TextStyle(color: Color(0xFF654900),fontSize:37,fontWeight: FontWeight.w800)),
                  Text(textAlign: TextAlign.center,'Ҷазо барои содир намудани зӯроварӣ', style: TextStyle(color: Color(0xFF654900),fontSize:27,fontWeight: FontWeight.w800)),
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
                    child:
                        Text(
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
              height: 510,
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: Padding(padding: EdgeInsets.all(20),
              child: Text('Бо мақсади ҳалли мушкилоти зӯроварӣ дар оила дар лоиҳаи нави Кодекси ҷиноятии Ҷумҳурии Тоҷикистон, ки аз ҷониби гурӯҳи корӣ бо Фармони Президенти Ҷумҳурии Тоҷикистон № АП-1209 аз 30 апрели соли 2019 таъсис дода шудааст, боби 19 (Ҷиноятҳои ҷиноятӣ нисбати оила ва ноболиғон) бори аввал моддаеро пешбинӣ мекунад, ки ҷазои ҷиноятиро барои хушунати хонаводагӣ муқаррар мекунад.',
              style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w800),
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text('Русский', style: TextStyle(color: Color(0xFF654900),fontSize:37,fontWeight: FontWeight.w800)),
                  Text(textAlign: TextAlign.center,'Наказание за совершение насилия', style: TextStyle(color: Color(0xFF654900),fontSize:27,fontWeight: FontWeight.w800)),
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
                    child:
                        Text(
                          'Уголовный кодекс предусматривает наказание за следующие деяния, которые носят насильственный характер: побои (статья 116), истязания (статья 117), торговля людьми (статья 130), изнасилование (статья 138), насильственные действия сексуального характера (статья 139), понуждение к действиям сексуального характера (статья 140), половое сношение и иные действия сексуального характера с лицом, не достигшим шестнадцати лет (статья 141), развратные действия (статья 142), двоеженство или многоженство (статья 170), вовлечение в занятие проституцией (статья 238), организация или содержание притонов, сводничество или сутенерство (статья 239) и т.п.',
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
              height: 470,
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: Padding(padding: EdgeInsets.all(20),
              child: Text('С целью решения проблем насилия в семье в новом проекте Уголовного кодекса РТ, разработанном рабочей группой, созданной Указом Президента РТ, №АП-1209 от 30 апреля 2019 года в главе 19 (Уголовные правонарушения против семьи и несовершеннолетних) впервые предусмотрена статья, устанавливающая уголовное наказание за насилие в семье.',
              style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w800),
              ),),
            )
          ],
        ),
      ),
    );
  }
}
