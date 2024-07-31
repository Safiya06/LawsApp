import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Vmkb14Page extends StatefulWidget {
  const Vmkb14Page({super.key});

  @override
  State<Vmkb14Page> createState() => _Vmkb14PageState();
}

class _Vmkb14PageState extends State<Vmkb14Page> {
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
              _khatlonContainer('ш. Хоруг, бинои Раёсати адлияи ВМКБ, к. Гагарин-14, ошёнаи 3 93-534-25-99; 93-501-05-91'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Ванч, к. М. Рахмоншо-36 (Фурудгох) 93-355-95-73'),
              ],
          ),
        ),
      ),
    );
  }
}
