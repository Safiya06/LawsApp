import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand12RuPage extends StatefulWidget {
  const Khujand12RuPage({super.key});

  @override
  State<Khujand12RuPage> createState() => _Khujand12RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand12RuPageState extends State<Khujand12RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 18),
      height: 146,
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
              fontSize: 24, fontWeight: FontWeight.w800, color: Colors.white),
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
                onTap: () => _launchDialer('929-19-90-60'),
                child: _khatlonContainer(
                    'Согдийская область\n224-68-50; 224-65-37;\n929-19-90-60'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer(' 92-770-37-47'),
                child: _khatlonContainer(
                    'г. Худжанд\n224-67-25; 927-70-37-47'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-97-93-59'),
                child: _khatlonContainer(
                    'г. Исфара\n918-97-93-59'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-712-60-92'),
                child: _khatlonContainer(
                    'г. Бустон\n927-12-60-92'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('322-44'),
                child: _khatlonContainer(
                    'г. Канибадам\n(8-3467) 322-44'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-870-02-41'),
                child: _khatlonContainer(
                    'г. Гулистон\n938-70-02-41'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-808-50-05'),
                child: _khatlonContainer(
                    'г. Истиклол\n928-08-50-05'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('5-53-94'),
                child: _khatlonContainer(
                    'г. Пенджикент\n(8-3475) 5-53-94'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('98-707-14-60'),
                child: _khatlonContainer(
                    'г. Истаравшан\n987-07-14-60'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-583-93-00'),
                child: _khatlonContainer(
                    'р. Айни\n935-83-93-00'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-894-22-92'),
                child: _khatlonContainer(
                    'р. Ашт\n928-94-22-92'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-625-84-87'),
                child: _khatlonContainer(
                    'г. Зафарабад\n926-25-84-87'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-764-38-97'),
                child: _khatlonContainer(
                    'р. Б. Гафуров\n927-64-38-97'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer(''),
                child: _khatlonContainer(
                    'р. Деваштич\n(8-3464) 243-79'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-600-15-73'),
                child: _khatlonContainer(
                    'р. Дж. Расулов\n926-00-15-73'),
              ),
              const SizedBox(height: 20),
               GestureDetector(
                onTap: () => _launchDialer(' 2-22-44'),
                 child: _khatlonContainer(
                    'р. Спитамен\n(8-3441) 2-22-44'),
               ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-787-30-35'),
                child: _khatlonContainer(
                    'р. Шахристон\n92-787-30-35'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('92-921-07-77'),
                child: _khatlonContainer(
                    'р. Мастчох\n931-29-99-01'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
