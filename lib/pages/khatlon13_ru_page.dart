import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon13RuPage extends StatefulWidget {
  const Khatlon13RuPage({super.key});

  @override
  State<Khatlon13RuPage> createState() => _Khatlon13RuPageState();
}

class _Khatlon13RuPageState extends State<Khatlon13RuPage> {
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
                  'г. Бохтар, ул. Б.Гафуров-11\n222-79-32; 939-20-74-00'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'р. Кубодиёнский\nул. И. Сомонӣ\n938-54-36-88'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'г. Куляб 98-535-36-71'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
