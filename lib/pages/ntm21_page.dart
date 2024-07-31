import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Ntm21Page extends StatefulWidget {
  const Ntm21Page({super.key});

  @override
  State<Ntm21Page> createState() => _Ntm21PageState();
}

class _Ntm21PageState extends State<Ntm21Page> {
  Widget _ntmContainer(String value) {
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
              _ntmContainer('ТЧ «Мададгор», ш. Вахдат, к. Тугдона-3. 907-84-81-91; 93-506-37-64'),
              const SizedBox(height: 20),
              _ntmContainer('ТЧ «Мумтоз», н. Рудакй, к. Бустон-13. (8-3137) 22-698; 907-84-43-94'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}