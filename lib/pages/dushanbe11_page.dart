import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dushanbe11Page extends StatefulWidget {
  const Dushanbe11Page({super.key});

  @override
  State<Dushanbe11Page> createState() => _Dushanbe11PageState();
}

class _Dushanbe11PageState extends State<Dushanbe11Page> {
  Widget _dushanbeContainer(String value) {
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
              _dushanbeContainer('Шохмансур-1,\nк. Валаматзода,\n12 90-046-46-91'),
              const SizedBox(height: 20),
              _dushanbeContainer('Шохмансур-2,\nк. Бустон, 1\n93-922-34-37'),
              const SizedBox(height: 20),
              _dushanbeContainer('Фирдавсй-1,\nк. Н. Карабоев 44\n988-508-088'),
              const SizedBox(height: 20),
              _dushanbeContainer('Фирдавсй-2, к. Р.\nАмакиев, г. 4, и. 20\n90-333-44-63'),
              const SizedBox(height: 20),
              _dushanbeContainer('Сино-2, к. Н.\nМахсум 95/1 93-316-50-25'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}