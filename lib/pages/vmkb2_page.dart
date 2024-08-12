import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Vmkb2Page extends StatefulWidget {
  const Vmkb2Page({super.key});

  @override
  State<Vmkb2Page> createState() => _Vmkb2PageState();
}

class _Vmkb2PageState extends State<Vmkb2Page> {
  Widget _vmkbContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 80,
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
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
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
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Vmkb21');
                },
                child: _vmkbContainer(
                    'ТАШКИЛОТХОИ ЧАМЪИЯТИИ ДАР САМТИ ПЕШГИРИИ ЗУРОВАРЙ ДАР ОИЛА'),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Vmkb22');
                  },
                  child: _vmkbContainer('МАРКАЗХОИ ЗАХИРАВИИ ЗАНОН')),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
