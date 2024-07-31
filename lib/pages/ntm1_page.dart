import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Ntm1Page extends StatefulWidget {
  const Ntm1Page({super.key});

  @override
  State<Ntm1Page> createState() => _Ntm1PageState();
}

class _Ntm1PageState extends State<Ntm1Page> {
  Widget _ntmContainer(String value) {
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
                  Navigator.pushNamed(context, '/Ntm11');
                },
                child: _ntmContainer(
                    'ХУЧРАХОИ НОЗИРОНИ МИНТАКАВЙ ОИД БА ПЕШГИРИИ ЗУРОВАРЙ ДАР ОИЛА ДАР ЧУМХУРИИ ТОЧИКИСТОН'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm12');
                  },
                  child: _ntmContainer('БАХШХОИ КОР БО ЗАНОН ВА ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm13');
                  },
                  child: _ntmContainer(
                      'ИНСТИТУТИ ВАКОЛАТДОР ОИД БА ХУКУКИ ИНСОН (ВХИ) ВА ВАКОЛАТДОР ОИД БА ХУКУКИ КУДАК (ВХК)')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm14');
                  },
                  child: _ntmContainer(
                      'ХУЧРАХОИ ТАВОНБАХШИИ ТИББИЮ ИЧТИМОЙ БАРОИ ЧАБРДИДАГОНИ ЗУРОВАРЙ ДАР ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm15');
                  },
                  child: _ntmContainer(
                      'ХУЧРАХОЙ МАШВАРАТЙ')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm16');
                  },
                  child: _ntmContainer(
                      'БЮРОХОИ ДАВЛАТИИ ХУКУКЙ, МУАССИСАИ ДАВЛАТИИ «МАРКАЗИ ЁРИИ ХУКУКЙ»-И ВАЗОРАТИ АДЛИЯИ ЧУМХУРИИ ТОЧИКИСТОН')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
