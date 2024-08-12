import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Khujand11RuPage extends StatefulWidget {
  const Khujand11RuPage({super.key});

  @override
  State<Khujand11RuPage> createState() => _Khujand11RuPageState();
}

class _Khujand11RuPageState extends State<Khujand11RuPage> {
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
              fontSize: 24, fontWeight: FontWeight.w800, color: Colors.white),
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
              _khatlonContainer('г. Худжанд,\nул. К. Худжанди-2\n921-77-00-04'),
              const SizedBox(height: 20),
              _khatlonContainer('г. Исфара, джамоати\nд. Джоркух, ул. Сари бозор\n929-49-32-92'),
              const SizedBox(height: 20),
              _khatlonContainer('г. Панджакент,\nп. Рудаки-130\n926-35-23-61'),
              const SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}
