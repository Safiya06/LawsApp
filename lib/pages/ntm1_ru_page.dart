import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Ntm1RuPage extends StatefulWidget {
  const Ntm1RuPage({super.key});

  @override
  State<Ntm1RuPage> createState() => _Ntm1RuPageState();
}

class _Ntm1RuPageState extends State<Ntm1RuPage> {
  Widget _ntmContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height*0.13,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
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
                onTap: () {
                  Navigator.pushNamed(context, '/Ntm11Ru');
                },
                child: _ntmContainer(
                    'ТЕЛЕФОН ДЛЯ СВЯЗИ С СУДАМИ'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm12Ru');
                  },
                  child: _ntmContainer('ОТДЕЛЫ ПО ДЕЛАМ ЖЕНЩИН И СЕМЬИ')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm13Ru');
                  },
                  child: _ntmContainer(
                      'КОМНАТЫ ИНСПЕКТОРОВ ПО ПРЕДУПРЕЖДЕНИЮ НАСИЛИЯ В СЕМЬЕ')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm14Ru');
                  },
                  child: _ntmContainer(
                      ' ИНСТИТУТ УПОЛНОМОЧЕННОГО ПО ПРАВАМ ЧЕЛОВЕКА И ПО ПРАВАМ РЕБЕНКА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm15Ru');
                  },
                  child: _ntmContainer(
                      'КОМНАТЫ МЕДИКО-СОЦИАЛЬНОЙ РЕАБИЛИТАЦИИ ЖЕРТВ НАСИЛИЯ В СЕМЬЕ')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm16Ru');
                  },
                  child: _ntmContainer(
                      'ГОСУДАРСТВЕННЫЕ ЮРИДИЧЕСКИЕ БЮРО «ЦЕНТРА ПРАВОВОЙ ПОМОЩИ» МИНИСТЕРСТВА ЮСТИЦИИ РТ')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
