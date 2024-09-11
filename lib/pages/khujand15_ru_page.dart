import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khujand15RuPage extends StatefulWidget {
  const Khujand15RuPage({super.key});

  @override
  State<Khujand15RuPage> createState() => _Khujand15RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khujand15RuPageState extends State<Khujand15RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
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
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
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
                onTap: () => _launchDialer('927-58-19-58'),
                child: _khatlonContainer(
                    'г. Пенджикент\nздание ГЦ  «Культурно-\nтворческий комплекс Кохи Лоик»\nп.Рудаки, 2 этаж,  207 кабинет\n933-55-59-80'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-09-26-09'),
                child: _khatlonContainer(
                    'р. Деваштич\nздание Центра юстиции\n1 этаж, ул. А. Сино\n933-55-59-82'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-95-62'),
                child: _khatlonContainer(
                    'р. Б. Гафуров\nул. А.Нозиров-14, здание Исполнительного органа государственной власти\n987-02-88-60'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-377-73-40'),
                child: _khatlonContainer(
                    'г. Канибадам\nздание ПМК- Экология\nул. К. Худжанди-5\n933-55-36-41'),
              ),
              const SizedBox(height: 20),GestureDetector(
                onTap: () => _launchDialer('927-58-19-58'),
                child: _khatlonContainer(
                    'г.Канибадам\nДжамоати село Пулотон\nул. А.Шарипова-109\n933-55-36-42'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-09-26-09'),
                child: _khatlonContainer(
                    'р. Дж. Расулов\nздание Центра юстиции,\nул. Э. Умаров, 1 этаж\n927-31-31-92; 933-55-36-40'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-95-62'),
                child: _khatlonContainer(
                    'р. Спитамен\nздание Центра юстиции\nг. Навкат, ул. Р. Турсунов-2\n935-55-04-51'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-377-73-40'),
                child: _khatlonContainer(
                    'г. Исфара\nздание Центра юстиции\n ул. Маркази-27\n933-55-97-05'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-377-73-40'),
                child: _khatlonContainer(
                    'г. Истаравшан\nздание Центра юстиции\nул. Г.Абдулоев\n935-54-28-18'),
              ),
              const SizedBox(height: 20),GestureDetector(
                onTap: () => _launchDialer('927-58-19-58'),
                child: _khatlonContainer(
                    'р. Ашт\nр.И. Сомони-6,\nздание Исполнительного органа государственной власти\n927-58-19-58'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('927-09-26-09'),
                child: _khatlonContainer(
                    'р. Ашт\nджамоати  Понгоз\nул. Сари бозор\n927-09-26-09'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-95-62'),
                child: _khatlonContainer(
                    'г. Гулистан,\nздание Центра здоровья,\nул. Истиклол-70\n933-55-95-62'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-377-73-40'),
                child: _khatlonContainer(
                    'г. Худжанд, ул. Р.Набиев-39\n9 этаж, 908 кабинет, здание\nИсполнительного органа государственной власти\n93-377-73-40'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
