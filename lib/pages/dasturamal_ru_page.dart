import 'package:flutter/material.dart';

class DasturamalRuPage extends StatefulWidget {
  const DasturamalRuPage({super.key});

  @override
  State<DasturamalRuPage> createState() => _DasturamalRuPageState();
}

class _DasturamalRuPageState extends State<DasturamalRuPage> {
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text(
                'Справочник',
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF654900),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur1Ru');
                },
                child: _dasturContainer('Как определить насилие в семье?',31),
              ), 
               const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur2Ru');
                },
                child: _dasturContainer('Что делать, если стали жертвой домашнего насилия?',31),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur3Ru');
                },
                child: _dasturContainer('Что делать, если вы подверглись сексуальному насилию?',31),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur4Ru');
                },
                child: _dasturContainer('Что делать, если вы стали свидетелем домашнего насилия?',31),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur5Ru');
                },
                child: _dasturContainer('Как определить, что ваша знакомая (ый) подвергается насилию',31),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur6Ru');
                },
                child: _dasturContainer('Национальное законодательство',31),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur7Ru');
                },
                child: _dasturContainer('Международное законодательство',31),
              ), 
              
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur61Ru');
                },
                child: _dasturContainer('Насилие в отношении женщин с точки зрения Ислама',31),
              ), 
                const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
