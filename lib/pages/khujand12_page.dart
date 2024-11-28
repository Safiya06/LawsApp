import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand12Page extends StatefulWidget {
  const Khujand12Page({super.key});

  @override
  State<Khujand12Page> createState() => _Khujand12PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand12PageState extends State<Khujand12Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 18),
      // height: 146,
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
                onTap: () => _launchDialer('929-19-90-60'),
                child: _khatlonContainer(
                    'Вилояти Суғд\n(8-3422)4-68-50; 4-65-37;\n929-19-90-60'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-70-37-47'),
                child: _khatlonContainer(
                    'ш. Хуҷанд\n(8-3422)4-67-25;\n927-70-37-47'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-97-93-59'),
                child: _khatlonContainer(
                    'ш. Исфара\n(8-3462)2-44-22;\n918-97-93-59'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-12-60-92'),
                child: _khatlonContainer(
                    'ш. Бустон\n(8-4744)822-44;\n927-12-60-92'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('322-44'),
                child: _khatlonContainer(
                    'ш. Конибодом\n(8-3467) 322-44'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('938-70-02-411'),
                child: _khatlonContainer(
                    'ш. Гулистон\n(8-3443)240-26;\n938-70-02-411'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('928-08-50-05'),
                child: _khatlonContainer(
                    'ш. Истиқлол\n(8-3465)2-54-87;\n928-08-50-05'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('5-53-94'),
                child: _khatlonContainer(
                    'ш. Панҷaкент\n(8-3475) 5-53-94'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('987-07-14-60'),
                child: _khatlonContainer(
                    'ш. Истаравшан\n(8-3454)2-44-65;\n987-07-14-60'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-83-93-00'),
                child: _khatlonContainer(
                    'н. Айнӣ\n(8-3479)2-28-71;\n935-83-93-00'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('928-94-22-92'),
                child: _khatlonContainer(
                    'н. Ашт\n(8-3453)214-30;\n928-94-22-92'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('926-25-84-87'),
                child: _khatlonContainer(
                    'ш. Зафаробод\n(8-3452)5-24-63;\n926-25-84-87'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-64-38-97'),
                child: _khatlonContainer(
                    'н. Б. Ғафуров\n(8-3442)3-36-73;\n927-64-38-97'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('243-79'),
                child: _khatlonContainer(
                    'н. Деваштич\n(8-3464) 243-79'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('926-00-15-73'),
                child: _khatlonContainer(
                    'н. Ҷ. Расулов\n(8-3455)2-11-30;\n926-00-15-73'),
              ),
              const SizedBox(height: 20),
               GestureDetector(
                onTap: () => _launchDialer('2-22-44'),
                 child: _khatlonContainer(
                    'н. Спитамен\n(8-3441) 2-22-44'),
               ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-787-30-35'),
                child: _khatlonContainer(
                    'н. Шаҳристон\n(8-3456)2-63-35;\n92-787-30-35'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-921-07-77'),
                child: _khatlonContainer(
                    'н. Мастчоҳ\n(8-3456)2-63-35;\n931-29-99-01; 929-21-07-77'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
