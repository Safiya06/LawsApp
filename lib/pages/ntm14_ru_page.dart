import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Ntm14Page extends StatefulWidget {
  const Ntm14Page({super.key});

  @override
  State<Ntm14Page> createState() => _Ntm14PageState();
}

class _Ntm14PageState extends State<Ntm14Page> {
  Widget _ntmContainer(String value) {
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
              _ntmContainer('ш. Турсунзода, бинои Хизби халки-демократи'),
              const SizedBox(height: 20),
              _ntmContainer('н. Рашт, к. И.Сомонй-42. 88-883-90-90; 93-597-44-00'),
              ],
          ),
        ),
      ),
    );
  }
}
