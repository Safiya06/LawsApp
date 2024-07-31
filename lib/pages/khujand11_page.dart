import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khujand11Page extends StatefulWidget {
  const Khujand11Page({super.key});

  @override
  State<Khujand11Page> createState() => _Khujand11PageState();
}

class _Khujand11PageState extends State<Khujand11Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 18,bottom: 18),
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
              fontSize: 24, fontWeight: FontWeight.w800, color: Colors.white),
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
              _khatlonContainer('ш. Хучанд, к. К. Хучандй-2 92-177-00-04'),
              const SizedBox(height: 20),
              _khatlonContainer('ш. Исфара, чамоати дех. Чоркух, к. Сари бозор 92-949-32-92'),
              const SizedBox(height: 20),
              _khatlonContainer('ш. Панчакент, х. Рудакй-130 92-635-23-61'),
              const SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}
