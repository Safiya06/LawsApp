import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon1Page extends StatefulWidget {
  const Khatlon1Page({super.key});

  @override
  State<Khatlon1Page> createState() => _Khatlon1PageState();
}

class _Khatlon1PageState extends State<Khatlon1Page> {
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
                onTap: () {
                  Navigator.pushNamed(context, '/Khatlon11');
                },
                child: _khujandContainer(
                    'ХУҶРАҲОИ НОЗИРОНИ МИНТАҚАВӢ ОИД БА ПЕШГИРИИ\nЗӮРОВАРӢ ДАР ОИЛА '),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Khatlon12');
                  },
                  child: _khujandContainer('БАХШҲОИ КОР БО ЗАНОН ВА ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Khatlon13');
                  },
                  child: _khujandContainer(
                      'ИНСТИТУТИ ВАКОЛАТДОР ОИД БА ҲУҚУҚИ ИНСОН\nВА ВАКОЛАТДОР ОИД БА ҲУҚУҚИ КӮДАК')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Khatlon14');
                  },
                  child: _khujandContainer(
                      'ХУҶРАҲОИ ТАВОНБАХШИИ ТИББИЮ ИҶТИМОӢ\nБАРОИ ҶАБРДИДАГОНИ ЗӮРОВАРӢ ДАР ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Khatlon15');
                  },
                  child: _khujandContainer('ҲУҶРАҲОИ МАШВАРАТӢ')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Khatlon15');
                  },
                  child: _khujandContainer(
                      'БЮРОҲОИ ДАВЛАТИИ ҲУҚУҚӢ, МУАССИСАИ ДАВЛАТИИ «МАРКАЗИ ЁРИИ ХУКУКӢ»-И ВАЗОРАТИ АДЛИЯИ ҶУМҲУРИИ ТОҶИКИСТОН')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
