import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khatlon16Page extends StatefulWidget {
  const Khatlon16Page({super.key});

  @override
  State<Khatlon16Page> createState() => _Khatlon16PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khatlon16PageState extends State<Khatlon16Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 18, bottom: 18),
      // height: MediaQuery.of(context).size.height*0.16,
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
                MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('93-355-59-86'),
                child: _khatlonContainer(
                    'н. Ҷайҳун,\nш. Дӯстӣ, бинои Маркази адлия, к. И. Сомонӣ, 10\n93-355-59-86'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-355-59-83'),
                child: _khatlonContainer('н. Восеъ,\nкӯчаи Мирзоев, 2\n93-355-59-83'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-355-36-38'),
                child: _khatlonContainer('н. Ёвон,\nҶамоати ш. Ёвон, к. М. Турсунзода, 42, ошёнаи 3 \n93-355-36-38'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-355-96-04'),
                child: _khatlonContainer('н. Дӯстӣ,\nбинои Маркази ҷавонон,\nк. Рӯдакӣ\n93-355-96-04'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-355-36-43'),
                child: _khatlonContainer('н. Ҷ. Балхӣ,\nш. Балх, к. Туғаланг, 6,\nбинои МИҲД (Ҳукумат)\n93-355-36-43'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-355-95-04'),
                child: _khatlonContainer('н. Ҷ. Балхӣ,\nҷамоати ш. Гулистон,\nмаркази радиошунавони №5\n93-355-95-04'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-355-95-81'),
                child: _khatlonContainer('н. Ховалинг,\nБинои Маркази адлия,\nк. И. Сомонӣ \n93-355-95-81'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-554-32-16'),
                child: _khatlonContainer('н. Мӯъминобод,\nбинои Маркази адлияи ҷамоати ш. Мӯъминобод,\nк. А. Давлатов\n93-554-32-16'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-355-59-81'),
                child: _khatlonContainer('н. Қубодиён,\nк. И. Сомонӣ, 200,\nбинои МИҲД (Ҳукумат)\n93-355-59-81'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-554-32-84'),
                child: _khatlonContainer('н. Данғара,\nк. Марказӣ, ош. 1, ут. 1,\nбинои МИҲД (Ҳукумат)\n93-554-32-84'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
