import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Vmkb13RuPage extends StatefulWidget {
  const Vmkb13RuPage({super.key});

  @override
  State<Vmkb13RuPage> createState() => _Vmkb13RuPageState();
}

class _Vmkb13RuPageState extends State<Vmkb13RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 18,bottom: 18),
      height: 146,
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
              _khatlonContainer('г. Хоруг, ул. Ленин-121\n 222-32-84; 934-00-74-57'),
              const SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}
