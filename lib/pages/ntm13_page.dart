import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Ntm13Page extends StatefulWidget {
  const Ntm13Page({super.key});

  @override
  State<Ntm13Page> createState() => _Ntm13PageState();
}

class _Ntm13PageState extends State<Ntm13Page> {
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
              _ntmContainer('н. Вахдат, бинои ШВКД. 93-992-58-19'),
              const SizedBox(height: 20),
              _ntmContainer('н. Рашт, ш. Fapm, к. И. Сомонй-36. 91-832-75-28'),
              const SizedBox(height: 20),
              _ntmContainer('н. Рудаки 900-27-81-81'),
              const SizedBox(height: 20),
              _ntmContainer('พ. Xncop 907-17-36-36'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}