import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dushanbe13Page extends StatefulWidget {
  const Dushanbe13Page({super.key});

  @override
  State<Dushanbe13Page> createState() => _Dushanbe13PageState();
}

class _Dushanbe13PageState extends State<Dushanbe13Page> {
  Widget _dushanbeContainer(String value) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
          padding: const EdgeInsets.all(18.0),
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
              _dushanbeContainer('Ваколатдор оид ба хукуки инсон дар ЧТ 101; 221-79-89'),
              const SizedBox(height: 20),
              _dushanbeContainer('Муовини Ваколатдор 103; 221-76-02'),
              const SizedBox(height: 20),
              _dushanbeContainer('Рохбари Дастгохи Ваколатдор 105; 221-76-01; 918-26-03-03'),
              const SizedBox(height: 20),
              _dushanbeContainer('Сардори Шуба 106; 221-46-92; 919-53-00-46'),
              const SizedBox(height: 20),
              _dushanbeContainer('Муовини сардори Шуба 120; 221-74-39; 93-999-68-68'),
              const SizedBox(height: 20),
              _dushanbeContainer('Сармутахассис 120; 221-74-39; 935-66-84-40'),
              const SizedBox(height: 20),
              _dushanbeContainer('Мутахассиси пешбар 120; 221-74-39; 93-546-00-12'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}