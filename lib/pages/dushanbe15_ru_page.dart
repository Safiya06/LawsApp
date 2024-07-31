import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dushanbe15RuPage extends StatefulWidget {
  const Dushanbe15RuPage({super.key});

  @override
  State<Dushanbe15RuPage> createState() => _Dushanbe15RuPageState();
}

class _Dushanbe15RuPageState extends State<Dushanbe15RuPage> {
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
                  'Телефон доверия прокуратуры г.Душанбе\n221-53-27',22),
              const SizedBox(height: 20),
              _dushanbeContainer(
                  'Телефон доверия Суда г.Душанбе\n233-55-13',22),
              const SizedBox(height: 20),
              _dushanbeContainer(
                  'Республиканский центр судебно-медицинской экспертизы, ул. Сомони-59, о.15, Национальный медицинский центр\n236-65-64; 900-09-73-33',17),
              const SizedBox(height: 20),
              _dushanbeContainer(
                  'Центр самопознания женщин\nп. Рудакӣ 38/1, 14 этаж\n935-17-77-56',20),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}