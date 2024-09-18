import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand15Page extends StatefulWidget {
  const Khujand15Page({super.key});

  @override
  State<Khujand15Page> createState() => _Khujand15PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand15PageState extends State<Khujand15Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 10),
      // height: MediaQuery.of(context).size.height*0.2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          value,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 40,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('933-55-59-80'),
                child: _khatlonContainer(
                    'ш. Панҷакент\nбинои МД «Маҷмааи фархангӣ-эҷодии Кохи Лоиқ»\nх. Рӯдакӣ, ош. 2, ут. 207\n933-55-59-80'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-59-82'),
                child: _khatlonContainer(
                    'н. Деваштич\nбинои Маркази адлия\nошиёнаи 1, кӯчаи А. Сино\n933-55-59-82'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('987-02-88-60'),
                child: _khatlonContainer(
                    'н. Б. Ғафуров\nкӯчаи А.Нозиров-14\nбинои МИҲД (Ҳукумат)\n987-02-88-60'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-36-41'),
                child: _khatlonContainer(
                    'ш. Конибодом\nбинои ПМК-Экология\nкӯчаи К. Хуҷандӣ-5\n933-55-36-41'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-36-42'),
                child: _khatlonContainer(
                    'ш.Конибодом\nҶамоати деҳоти Пӯлотон\nкӯчаи А.Шарипова-109\n933-55-36-42'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-36-40'),
                child: _khatlonContainer(
                    'н. Ҷ. Расулов\nбинои Маркази адлия\nкӯчаи Э. Умаров, ош. 1\n927-31-31-92; 933-55-36-40'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-55-04-51'),
                child: _khatlonContainer(
                    'н. Спитамен\nбинои Маркази адлияи ҷамоатӣ\nш. Навқат, кӯчаи Р. Турсунов-2\n935-55-04-51'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-97-05'),
                child: _khatlonContainer(
                    'ш. Исфара\nбинои Маркази адлия\n кӯчаи Маркази-27\n933-55-97-05'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-54-28-18'),
                child: _khatlonContainer(
                    'ш. Истаравшан\nбинои Маркази адлия кӯчаи Ғ.Абдулоев\n935-54-28-18'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-58-19-58'),
                child: _khatlonContainer(
                    'н. Ашт\nкӯчаи И. Сомонӣ-6\nбинои МИҲД (Ҳукумат)\n927-58-19-58'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-09-26-09'),
                child: _khatlonContainer(
                    'н. Ашт\nҶамоати деҳоти Понғоз кӯчаи Сари бозор\n927-09-26-09'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-95-62'),
                child: _khatlonContainer('ш. Гулистон\nбинои  Маркази саломатӣ\nкӯчаи Истиқлол-70\n933-55-95-62'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-377-73-40'),
                child: _khatlonContainer('ш. Хуҷанд\nкӯчаи Р.Набиев-39\nош. 9-ум, ут. 908, бинои\nМИХД (Ҳукумат)\n93-377-73-40'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
