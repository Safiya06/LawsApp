import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dushanbe2Page extends StatefulWidget {
  const Dushanbe2Page({super.key});

  @override
  State<Dushanbe2Page> createState() => _Dushanbe2PageState();
}

class _Dushanbe2PageState extends State<Dushanbe2Page> {
  Widget _dushanbeContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height*0.13,
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
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dushanbe21');
                },
                child: _dushanbeContainer(
                    'ТАШКИЛОТҲОИ ҶАМЪИЯТӢ ДАР САМТИ ПЕШГИРИИ ЗӮРОВАРӢ ДАР ОИЛА'),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
