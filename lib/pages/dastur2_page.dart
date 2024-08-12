import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dastur2Page extends StatelessWidget {
  const Dastur2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Theme.of(context).colorScheme.primary,
          iconSize: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        'Тартиб додани накшаи амал хангоми вазъияти бухрони - бехатар ва хар чй зудтар хонаро тарк намудан.\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Text('                               ➡️', style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: Text(
                  textAlign: TextAlign.center,
                  'ДАР ХОТИР ДОШТА БОШЕД',
                  style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Column(
                children: [
                  Container(
                    height: 11,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).colorScheme.primary, width: 2),
                      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                    ),
                    child: const Text('Шумо дар зуроварй нисбати худ гунох надоред, гунахгор худи хушунатгар аст ва бо ёрии Шумо вай ба чавобгарй кашида мешавад.',
                    style: TextStyle(color: Color(0xFF654900),fontSize: 18,fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
