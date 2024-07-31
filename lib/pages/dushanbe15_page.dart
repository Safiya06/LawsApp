import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dushanbe15Page extends StatefulWidget {
  const Dushanbe15Page({super.key});

  @override
  State<Dushanbe15Page> createState() => _Dushanbe15PageState();
}

class _Dushanbe15PageState extends State<Dushanbe15Page> {
  Widget _dushanbeContainer(String value, double size) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            value,
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
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
              _dushanbeContainer(
                  'Телефони боварии Прокуратураи шахри Душанбе (+992 37) 221-53-27',22),
              const SizedBox(height: 20),
              _dushanbeContainer(
                  'Телефони боварии Суди шахри Душанбе (+992 37) 233-55-13',22),
              const SizedBox(height: 20),
              _dushanbeContainer(
                  'Маркази чумхуриявии экспертизаи тиббию суди, к. Сомони-59, иморати 15 Маркази миллии тибби. 236-65-64; 900-09-73-33',19),
              const SizedBox(height: 20),
              _dushanbeContainer(
                  'Маркази худшиносии бонувон х. Рудакй 38/1, ошёнаи 14 93-51-777-56 salomova.m@gmail.com',20),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
