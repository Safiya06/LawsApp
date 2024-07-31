import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khujand21RuPage extends StatefulWidget {
  const Khujand21RuPage({super.key});

  @override
  State<Khujand21RuPage> createState() => _Khujand21RuPageState();
}

class _Khujand21RuPageState extends State<Khujand21RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 222,
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
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _khatlonContainer(
                  'ОО «Гулрухсор»\n г. Худжанд, р. Р. Набиев-111\n927-80-40-74; 987-50-40-74 info@gulruhsor.tj'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
