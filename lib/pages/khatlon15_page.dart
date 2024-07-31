import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon15Page extends StatefulWidget {
  const Khatlon15Page({super.key});

  @override
  State<Khatlon15Page> createState() => _Khatlon15PageState();
}

class _Khatlon15PageState extends State<Khatlon15Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 18, bottom: 18),
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
                  'ш.Левакант, Маркази дастгирии занон 98-726-69-95'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Кушониён, бахши занон ва оила МИХД 98-726-69-95'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Левакант, бинои Касри фарханг, ош. 3 91-833-00-63'),
              const SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}
