import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Khujand2RuPage extends StatefulWidget {
  const Khujand2RuPage({super.key});

  @override
  State<Khujand2RuPage> createState() => _Khujand2RuPageState();
}

class _Khujand2RuPageState extends State<Khujand2RuPage> {
  Widget _khujandContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(10),
      // height: MediaQuery.of(context).size.height*0.13,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          value,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
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
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Khujand21Ru');
                },
                child: _khujandContainer(
                    ' ОБЩЕСТВЕННЫЕ ОРГАНИЗАЦИИ В НАПРАВЛЕНИИ ПРЕДУПРЕЖДЕНИЯ НАСИЛИЯ'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Khujand22Ru');
                  },
                  child: _khujandContainer('РЕСУРСНЫЕ ЦЕНТРЫ ДЛЯ ЖЕНЩИН')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
