import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Vmkb21Page extends StatefulWidget {
  const Vmkb21Page({super.key});

  @override
  State<Vmkb21Page> createState() => _Vmkb21PageState();
}

class _Vmkb21PageState extends State<Vmkb21Page> {
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
                  'М33 «Сарпараст», н. Ванч, чамоати Абдуллоев, к. 8-уми Март, бинои 9 93-581-96-46; 93-597-09-24; tj_sarparast_vanj@mail. ru'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
