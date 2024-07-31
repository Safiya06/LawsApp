import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Vmkb13Page extends StatefulWidget {
  const Vmkb13Page({super.key});

  @override
  State<Vmkb13Page> createState() => _Vmkb13PageState();
}

class _Vmkb13PageState extends State<Vmkb13Page> {
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
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _khatlonContainer('ш. Хоруг, кучаи Ленин-121. Тел.: (8-3322) 232-84; 93-400-74-57'),
              const SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}
