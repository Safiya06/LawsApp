import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Khujand14RuPage extends StatefulWidget {
  const Khujand14RuPage({super.key});

  @override
  State<Khujand14RuPage> createState() => _Khujand14RuPageState();
}

class _Khujand14RuPageState extends State<Khujand14RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 18,right: 18,top: 18,bottom: 18),
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
              _khatlonContainer('г. Худжанд, ул. Фирдавси-120\n226-28-68; 929-40-94-94'),
              const SizedBox(height: 20),
              _khatlonContainer('р. Айни, село Томинёт927-07-06-65'),
              const SizedBox(height: 20),
              _khatlonContainer('г. Исфара, ул. Маркази\n927-01-72-40; 918-43-79-29'),
              const SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}
