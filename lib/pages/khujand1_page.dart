import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';

class Khujand1Page extends StatefulWidget {
  const Khujand1Page({super.key});

  @override
  State<Khujand1Page> createState() => _Khujand1PageState();
}

class _Khujand1PageState extends State<Khujand1Page> {
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
              fontSize: 11, fontWeight: FontWeight.w800, color: Colors.white),
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
                  Navigator.pushNamed(context, '/Khujand11');
                },
                child: _khujandContainer(
                    'ХУЧРАХОИ НОЗИРОНИ МИНТАКАВЙ ОИД БА ПЕШГИРИИ ЗУРОВАРЙ ДАР ОИЛА ДАР ЧУМХУРИИ ТОЧИКИСТОН'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Khujand12');
                  },
                  child: _khujandContainer('БАХШХОИ КОР БО ЗАНОН ВА ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Khujand13');
                  },
                  child: _khujandContainer(
                      'ХУЧРАХОИ ТАВОНБАХШИИ ТИББИЮ ИЧТИМОЙ БАРОИ ЧАБРДИДАГОНИ ЗУРОВАРЙ ДАР ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Khujand14');
                  },
                  child: _khujandContainer(
                      'ИНСТИТУТИ ВАКОЛАТДОР ОИД БА ХУКУКИ ИНСОН (ВХИ) ВА ВАКОЛАТДОР ОИД БА ХУКУКИ КУДАК (ВХК)')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Khujand15');
                  },
                  child: _khujandContainer(
                      'БЮРОХОИ ДАВЛАТИИ ХУКУКЙ, МУАССИСАИ ДАВЛАТИИ «МАРКАЗИ ЁРИИ ХУКУКЙ»-И ВАЗОРАТИ АДЛИЯИ ЧУМХУРИИ ТОЧИКИСТОН')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
