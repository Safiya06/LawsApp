import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Vmkb22Page extends StatefulWidget {
  const Vmkb22Page({super.key});

  @override
  State<Vmkb22Page> createState() => _Vmkb22PageState();
}

class _Vmkb22PageState extends State<Vmkb22Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 140,
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
              _khatlonContainer('ТЧ «Занон барои адолат», ш. Хоруг, к. Ш. Шотемур-8 93-593-97-74'),
              const SizedBox(height: 20),
              _khatlonContainer('ТЧ «Мадина», ш. Хоруг, к. Х. Кирмоншо-66 93-555-47-36; 93-477-97-77'),
              const SizedBox(height: 20),
              _khatlonContainer('ТЧ «Номус ва инсоф», ш. Хоруг, к. Х. Кирмоншо-1 91-923-00-71'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}