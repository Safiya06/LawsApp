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
      // height: MediaQuery.of(context).size.height*0.15,
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
                  Navigator.pushNamed(context, '/Vmkb11');
                },
                child: _khujandContainer(
                    'ХУҶРАҲОИ НОЗИРОНИ МИНТАҚАВӢ ОИД БА ПЕШГИРИИ\nЗӮРОВАРӢ ДАР ОИЛА'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Vmkb12');
                  },
                  child: _khujandContainer('БАХШҲОИ КОР БО ЗАНОН ВА ОИЛА')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Vmkb13');
                  },
                  child: _khujandContainer(
                      'ИНСТИТУТИ ВАКОЛАТДОР ОИД БА ҲУҚУҚИ ИНСОН\nВА ВАКОЛАТДОР ОИД БА ҲУҚУҚИ КӮДАК')),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Vmkb14');
                  },
                  child: _khujandContainer(
                      'БЮРОҲОИ ДАВЛАТИИ ҲУҚУҚӢ, МУАССИСАИ ДАВЛАТИИ «МАРКАЗИ ЁРИИ ХУКУКӢ»-И ВАЗОРАТИ АДЛИЯИ ҶУМҲУРИИ ТОҶИКИСТОН')),
             
            ],
          ),
        ),
      ),
    );
  }
}
