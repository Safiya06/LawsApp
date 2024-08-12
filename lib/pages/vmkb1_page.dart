import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Vmkb1Page extends StatefulWidget {
  const Vmkb1Page({super.key});

  @override
  State<Vmkb1Page> createState() => _Vmkb1PageState();
}

class _Vmkb1PageState extends State<Vmkb1Page> {
  Widget _khujandContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 80,
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
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Vmkb11');
                },
                child: _khujandContainer(
                    'ХУЧРАХОИ НОЗИРОНИ МИНТАКАВЙ ОИД БА ПЕШГИРИИ ЗУРОВАРЙ ДАР ОИЛА ДАР ЧУМХУРИИ ТОЧИКИСТОН'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Vmkb12');
                  },
                  child: _khujandContainer('БАХШХОИ КОР БО ЗАНОН ВА ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Vmkb13');
                  },
                  child: _khujandContainer(
                      'ИНСТИТУТИ ВАКОЛАТДОР ОИД БА ХУКУКИ ИНСОН (ВХИ) ВА ВАКОЛАТДОР ОИД БА ХУКУКИ КУДАК (ВХК)')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Vmkb14');
                  },
                  child: _khujandContainer(
                      'БЮРОХОИ ДАВЛАТИИ ХУКУКЙ, МУАССИСАИ ДАВЛАТИИ «МАРКАЗИЁРИИ ХУКУКЙ»-И ВАЗОРАТИ АДЛИЯИ ЧУМХУРИИ ТОЧИКИСТОН')),
             
            ],
          ),
        ),
      ),
    );
  }
}
