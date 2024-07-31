import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon13Page extends StatefulWidget {
  const Khatlon13Page({super.key});

  @override
  State<Khatlon13Page> createState() => _Khatlon13PageState();
}

class _Khatlon13PageState extends State<Khatlon13Page> {
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
                  'ш. Бохтар, к. Б.Гафуров-11 (8-3222) 2-79-32; 93-920-74-00'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Кубодиён, к. И. Сомонй 93-854-36-88'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Кулоб 98-535-36-71'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
