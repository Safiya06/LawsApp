import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Ntm15Page extends StatefulWidget {
  const Ntm15Page({super.key});

  @override
  State<Ntm15Page> createState() => _Ntm15PageState();
}

class _Ntm15PageState extends State<Ntm15Page> {
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
              _ntmContainer('ш. Вахдат, Беморхонаи марказии шахри, к. 20-солагии Истиклолият. 93-526-69-00; 907-94-81-32; 93-526-69-02'),
              const SizedBox(height: 20),
              _ntmContainer('н. Рашт, Беморхонаи марказии нохия, к. И. Сомонй-14. 985-98-52-01; 918-21-55-05; 900-10-34-96; 988-64-44-65: 988-43-99-66'),
              const SizedBox(height: 20),
              _ntmContainer('н. Хисор, Беморхонаи марказии нохияви 907-52-51-04'),
              const SizedBox(height: 20),
              _ntmContainer('н. Рудаки, Беморхонаи арказии нохиявй 904-02-25-15'),
              const SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}
