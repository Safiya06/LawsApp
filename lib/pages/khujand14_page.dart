import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khujand14Page extends StatefulWidget {
  const Khujand14Page({super.key});

  @override
  State<Khujand14Page> createState() => _Khujand14PageState();
}

class _Khujand14PageState extends State<Khujand14Page> {
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
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _khatlonContainer('ш. Хучанд, к.Фирдавсй-120 (8-3226) 28-68; 92-940-94-94'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Айни, дехаи Томин 92-707-06-65'),
              const SizedBox(height: 20),
              _khatlonContainer('ш. Исфара, к. Маркази 92-701-72-40; 918-43-79-29'),
              const SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}
