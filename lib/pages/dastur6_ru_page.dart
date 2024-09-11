import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dastur6RuPage extends StatefulWidget {
  const Dastur6RuPage({super.key});

  @override
  State<Dastur6RuPage> createState() => _Dastur6RuPageState();
}

class _Dastur6RuPageState extends State<Dastur6RuPage> {
  Widget _dasturContainer(String value, double size) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: TextStyle(
                color: Colors.white,
                fontSize: size,
                fontWeight: FontWeight.w800,
              ),
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
                MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur61Ru');
                },
                child: _dasturContainer('Ранние\nбраки', 42),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur61Ru');
                },
                child: _dasturContainer('Программа развития семьи', 36),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur63Ru');
                },
                child: _dasturContainer('Наказание за совершение насилия', 36),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
