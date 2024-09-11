import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dushanbe1RuPage extends StatefulWidget {
  const Dushanbe1RuPage({super.key});

  @override
  State<Dushanbe1RuPage> createState() => _Dushanbe1RuPageState();
}

class _Dushanbe1RuPageState extends State<Dushanbe1RuPage> {
  Widget _khujandContainer(String value) {
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
                  Navigator.pushNamed(context, '/Dushanbe11Ru');
                },
                child: _khujandContainer(
                    'КОМНАТЫ ИНСПЕКТОРОВ ПО ПРЕДУПРЕЖДЕНИЮ НАСИЛИЯ В СЕМЬЕ'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Dushanbe12Ru');
                  },
                  child: _khujandContainer('ОТДЕЛЫ ПО ДЕЛАМ ЖЕНЩИН И СЕМЬИ')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Dushanbe13Ru');
                  },
                  child: _khujandContainer(
                      'КОМНАТЫ МЕДИКО-СОЦИАЛЬНОЙ РЕАБИЛИТАЦИИ ЖЕРТВ НАСИЛИЯ В СЕМЬЕ')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Dushanbe14Ru');
                  },
                  child: _khujandContainer(
                      ' ИНСТИТУТ УПОЛНОМОЧЕННОГО ПО ПРАВАМ ЧЕЛОВЕКА И ПО ПРАВАМ РЕБЕНКА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Dushanbe15Ru');
                  },
                  child:
                      _khujandContainer('ДРУГИЕ ГОСУДАРСТВЕННЫЕ УЧРЕЖДЕНИЯ')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
