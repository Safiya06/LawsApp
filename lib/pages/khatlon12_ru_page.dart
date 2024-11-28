import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Khatlon12RuPage extends StatefulWidget {
  const Khatlon12RuPage({super.key});

  @override
  State<Khatlon12RuPage> createState() => _Khatlon12RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Khatlon12RuPageState extends State<Khatlon12RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 18, bottom: 18),
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
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('907-75-35-05'),
                  child: _khatlonContainer(
                      'Хатлонская область,\n(8-3222)222-16-16;\n907-75-35-05')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('988-06-44-40'),
                  child: _khatlonContainer(
                      'Хатлонская область,\n(8-3222)222-16-16;\n988-06-44-40')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('905-70-45-55'),
                  child:
                      _khatlonContainer('г.Бохтар,\n(8-3222)222-27-46;\n905-70-45-55')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-25-19-19'),
                  child: _khatlonContainer('г.Куляб,\n(8-3322)226-41;\n918-25-19-19')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('937-33-80-08'),
                  child: _khatlonContainer('г. Нурек,\n(8-3138)224-53;\n937-33-80-08')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('907-30-56-66'),
                  child: _khatlonContainer('р. Левакант,\n(8-3250)614-20;\n907-30-56-66')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('938-53-18-18'),
                  child: _khatlonContainer('р. Яван,\n(8-3141)211-48;\n938-53-18-18')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('917-57-23-24'),
                  child: _khatlonContainer('р. Кушониён,\n(8-3245)211-83;\n917-57-23-24')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('988-34-92-29'),
                  child: _khatlonContainer('р. Восе,\n(8-3311)227-16;\n988-34-92-29')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('988-23-20-79'),
                  child: _khatlonContainer('р.Дангара,\n(8-3312)215-84;\n988-23-20-79')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('907-21-96-68'),
                  child: _khatlonContainer(
                      'p.Темурмалик,\n(8-3314)211-92;\n907-21-96-68')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('917-90-38-18'),
                  child: _khatlonContainer(
                      'p.Хуросон,\n(8-3242)217-97;\n917-90-38-18')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('917-04-43-43'),
                  child: _khatlonContainer('р. Дж. Балхи\n(8-3247)437-72;\n917-04-43-43')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('2-27-17'),
                  child: _khatlonContainer('р. Кубодиён\n(8-3251) 2-27-17')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-177-21-67'),
                child: _khatlonContainer(
                    'р. А. Хамадонӣ\n(8-3315)220-95;\n931-77-21-67'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer(' 93-999-63-22'),
                  child: _khatlonContainer(
                      'р. Н. Хусрав\n(8-3258)222-37;\n939-99-63-22')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('98-733-12-67'),
                  child: _khatlonContainer(
                      'р. Муминобод\n(8-3318)212-21;\n987-33-12-67')),
              const SizedBox(height: 20),
               GestureDetector(
                onTap: () => _launchDialer('93-355-12-48'),
                  child: _khatlonContainer(
                      'р. Пяндж,\n(8-3252)231-84-10;\n93-355-12-48')),
              const SizedBox(height: 20),
               GestureDetector(
                onTap: () => _launchDialer('93-108-09-85'),
                  child: _khatlonContainer(
                      'р. Джайхун,\n(8-3249)4-33-15;\n93-108-09-85')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-909-07-80'),
                  child: _khatlonContainer(
                      'р. А. Джами\n(8-3243)234-11;\n939-09-07-80')),
              const SizedBox(height: 20),
               GestureDetector(
                onTap: () => _launchDialer('98-710-83-16'),
                  child: _khatlonContainer(
                      'р. Бальджуван,\n(8-3357)213-36;\n98-710-83-16')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-838-88-38'),
                  child: _khatlonContainer(
                      'р. Вахш\n(8-3346)236-53;\n938-38-88-38')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer(' 900-58-10-15'),
                  child: _khatlonContainer(
                      'р. Фархор\n(8-3316)211-27;\n900-58-10-15')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('988-08-96-83'),
                  child: _khatlonContainer(
                      'р. Ховалинг\n(8-3317)200-33;\n988-08-96-83')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer(' 93-399-88-18'),
                  child: _khatlonContainer(
                      'р. Шахритус\n(8-3240)210-49;\n933-99-88-18')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-44-45-37'),
                  child: _khatlonContainer(
                      'р. Ш. Шохин\n(8-3319)214-19;\n918-44-45-37')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-592-37-22'),
                  child: _khatlonContainer(
                      'р. Дусти\n(8-3248)213-88;\n935-92-37-22')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
