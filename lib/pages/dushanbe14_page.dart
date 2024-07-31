import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dushanbe14Page extends StatefulWidget {
  const Dushanbe14Page({super.key});

  @override
  State<Dushanbe14Page> createState() => _Dushanbe14PageState();
}

class _Dushanbe14PageState extends State<Dushanbe14Page> {
  Widget _dushanbeContainer(String value) {
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
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          )),
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
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _dushanbeContainer('Таввалудхонаи Nº 2, к. Хусейнзода-8. 907-77-29-77; 223-02-842'),
              const SizedBox(height: 20),
              _dushanbeContainer('Маркази миллии тибби, к. И. Сомонй-59 918-69-78-09; 907-27-27-22'),
              const SizedBox(height: 20),
              _dushanbeContainer('Мачмааи тиббии «Истиклол», бинои Б6, ошёнаи 7, к. Н Каробоев-60 93-530-39-94; 903-77-05-73'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}