import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon15RuPage extends StatefulWidget {
  const Khatlon15RuPage({super.key});

  @override
  State<Khatlon15RuPage> createState() => _Khatlon15RuPageState();
}

class _Khatlon15RuPageState extends State<Khatlon15RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 18, bottom: 18),
      height: 146,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          value,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.w800, color: Colors.white),
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
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _khatlonContainer(
                  'г.Левакант\nЦентр поддержки женщин\n987-26-69-95'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'р. Кушониён, Отдел по делам женщин и семьи\n987-26-69-95'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'г. Левакант, здание Дворца культуры, 3 этаж\n918-33-00-63'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
