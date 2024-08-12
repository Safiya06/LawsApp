import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Vmkb21RuPage extends StatefulWidget {
  const Vmkb21RuPage({super.key});

  @override
  State<Vmkb21RuPage> createState() => _Vmkb21RuPageState();
}

class _Vmkb21RuPageState extends State<Vmkb21RuPage> {
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
                MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _khatlonContainer(
                  'РЦЖ «Сарпараст»\nр. Ванч, джамоати Абдуллаев ул. 8-ое Марта, здание 9\n935-81-96-46; 935-97-09-24; tj_sarparast_vanj@mail. ru'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
