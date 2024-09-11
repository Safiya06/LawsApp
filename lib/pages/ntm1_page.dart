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
                  Navigator.pushNamed(context, '/Ntm11');
                },
                child: _ntmContainer(
                    'ТЕЛЕФОНИ ТАМОС БО СУДҲО'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm12');
                  },
                  child: _ntmContainer('БАХШҲОИ КОР БО ЗАНОН ВА ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm13');
                  },
                  child: _ntmContainer(
                      'ХУҶРАҲОИ НОЗИРОНИ МИНТАҚАВӢ ОИД БА ПЕШГИРИИ\nЗӮРОВАРӢ ДАР ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm14');
                  },
                  child: _ntmContainer(
                      'ИНСТИТУТИ ВАКОЛАТДОР ОИД БА ҲУҚУҚИ ИНСОН\nВА ВАКОЛАТДОР ОИД БА ҲУҚУҚИ КӮДАК')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm15');
                  },
                  child: _ntmContainer(
                      'ХУҶРАҲОИ ТАВОНБАХШИИ ТИББИЮ ИҶТИМОӢ\nБАРОИ ҶАБРДИДАГОНИ ЗӮРОВАРӢ ДАР ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Ntm16');
                  },
                  child: _ntmContainer(
                      'БЮРОҲОИ ДАВЛАТИИ ХУКУКӢ, МУАССИСАИ ДАВЛАТИИ «МАРКАЗИ\nЁРИИ ХУКУКЙ»-И ВАЗОРАТИ АДЛИЯИ ЧУМХУРИИ ТОЧИКИСТОН')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
