import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Ntm21RuPage extends StatefulWidget {
  const Ntm21RuPage({super.key});

  @override
  State<Ntm21RuPage> createState() => _Ntm21RuPageState();
}

class _Ntm21RuPageState extends State<Ntm21RuPage> {
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
                context, MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _ntmContainer('ОО «Мададгор»\nг. Вахдат, ул. Тугдона-3\n907-84-81-91; 935-06-37-64'),
              const SizedBox(height: 20),
              _ntmContainer('ОО «Мумтоз»\nр. Рудаки, ул. Бустон-13\n907-84-43-94'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}