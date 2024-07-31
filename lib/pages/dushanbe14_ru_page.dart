import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dushanbe14RuPage extends StatefulWidget {
  const Dushanbe14RuPage({super.key});

  @override
  State<Dushanbe14RuPage> createState() => _Dushanbe14RuPageState();
}

class _Dushanbe14RuPageState extends State<Dushanbe14RuPage> {
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
              _dushanbeContainer('Родильный дом Nº 2\nул. Хусейнзода-8\n907-77-29-77;\n223-02-84'),
              const SizedBox(height: 20),
              _dushanbeContainer('Национальный\nмедицинский центр\nул. И. Сомони-59\n918-69-78-09;\n907-27-27-22'),
              const SizedBox(height: 20),
              _dushanbeContainer('Медицинский комплекс\n"Истиклол» корпус Б6, 7 этаж,\nк. Н Қаробоев-60\n935-30-39-94; 903-77-05-73\n903-77-05-73'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}