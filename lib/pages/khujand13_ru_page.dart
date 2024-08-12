import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Khujand13RuPage extends StatefulWidget {
  const Khujand13RuPage({super.key});

  @override
  State<Khujand13RuPage> createState() => _Khujand13RuPageState();
}

class _Khujand13RuPageState extends State<Khujand13RuPage> {
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
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _khatlonContainer(
                  'р.Пенджикент\nЦентральная районная больница\n933-93-00-55; 927-14-65-00'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'р. Исфара\nЦентральная районная больница\n989-09-97-32; 987-99-98-70'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'р. Айни\nЦентральная районная больница\n926-20-45-47; 926-37-99-44'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
