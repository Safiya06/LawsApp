import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Ntm13RuPage extends StatefulWidget {
  const Ntm13RuPage({super.key});

  @override
  State<Ntm13RuPage> createState() => _Ntm13RuPageState();
}

class _Ntm13RuPageState extends State<Ntm13RuPage> {
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
                context, MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _ntmContainer('г. Вахдат, д. ОМВД\n939-92-58-19'),
              const SizedBox(height: 20),
              _ntmContainer('р. Рашт, г. Гарм,\nул. И. Сомони-36\n918-32-75-28'),
              const SizedBox(height: 20),
              _ntmContainer('р. Рудаки\n900-27-81-81'),
              const SizedBox(height: 20),
              _ntmContainer('г.Гисар\n907-17-36-36'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}