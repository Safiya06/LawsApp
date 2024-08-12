import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dushanbe12RuPage extends StatefulWidget {
  const Dushanbe12RuPage({super.key});

  @override
  State<Dushanbe12RuPage> createState() => _Dushanbe12RuPageState();
}

class _Dushanbe12RuPageState extends State<Dushanbe12RuPage> {
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
                context, MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _dushanbeContainer('Центральный аппарат\n221-34-71; 227-17-41;\n227-10-31'),
              const SizedBox(height: 20),
              _dushanbeContainer('г. Душанбе\n221-30-57; 918-70-81-43'),
              const SizedBox(height: 20),
              _dushanbeContainer('р. Фирдавси\n233-89-48; 900-08-91-25'),
              const SizedBox(height: 20),
              _dushanbeContainer('р. Шохмансур\n227-61-66; 917-40-97-45'),
              const SizedBox(height: 20),
              _dushanbeContainer('р. И. Сомони\n221-05-36; 917-14-14-02'),
              const SizedBox(height: 20),
              _dushanbeContainer('р. Сино\n235-06-73; 98-915-12-08'),
            ],
          ),
        ),
      ),
    );
  }
}