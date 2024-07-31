import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dushanbe13RuPage extends StatefulWidget {
  const Dushanbe13RuPage({super.key});

  @override
  State<Dushanbe13RuPage> createState() => _Dushanbe13RuPageState();
}

class _Dushanbe13RuPageState extends State<Dushanbe13RuPage> {
  Widget _dushanbeContainer(String value) {
    return Container(
      height: 146,
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
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              _dushanbeContainer('Уполномоченный по правам человека\n101; 221-79-89'),
              const SizedBox(height: 20),
              _dushanbeContainer('Заместитель Уполномоченного\n103; 221-76-02'),
              const SizedBox(height: 20),
              _dushanbeContainer('Руководитель аппарата уполномоченного по правам человека 105; 221-76-01; 918-26-03-03'),
              const SizedBox(height: 20),
              _dushanbeContainer('Начальник отдела\n106; 221-46-92;\n919-53-00-46'),
              const SizedBox(height: 20),
              _dushanbeContainer('Заместитель начальника отдела\n120; 221-74-39;\n939-99-68-68'),
              const SizedBox(height: 20),
              _dushanbeContainer('Главный специалист\n120; 221-74-39;\n935-66-84-40'),
              const SizedBox(height: 20),
              _dushanbeContainer('Ведущий специалист\n120; 221-74-39;\n935-46-00-12'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}