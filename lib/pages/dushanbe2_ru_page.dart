import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dushanbe2RuPage extends StatefulWidget {
  const Dushanbe2RuPage({super.key});

  @override
  State<Dushanbe2RuPage> createState() => _Dushanbe2RuPageState();
}

class _Dushanbe2RuPageState extends State<Dushanbe2RuPage> {
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
                MaterialPageRoute(builder: (context) => const MainRuPage()));
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
                  Navigator.pushNamed(context, '/Dushanbe21Ru');
                },
                child: _dushanbeContainer(
                    '  ОБЩЕСТВЕННЫЕ ОРГАНИЗАЦИИ В НАПРАВЛЕНИИ ПРЕДУПРЕЖДЕНИЯ НАСИЛИЯ'),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
