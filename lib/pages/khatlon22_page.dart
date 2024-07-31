import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon22Page extends StatefulWidget {
  const Khatlon22Page({super.key});

  @override
  State<Khatlon22Page> createState() => _Khatlon22PageState();
}

class _Khatlon22PageState extends State<Khatlon22Page> {
  Widget _khatlonContainer(String value) {
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
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
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
              _khatlonContainer('Маркази бухронии ТЧ «Гамхорй», ш. Бохтар, к. Вахдат-137 (8-3222) 278-79; w.c.ghamkhori@mail.ru'),
              const SizedBox(height: 20),
              _khatlonContainer('ТЧ «Майрам», ш. Кулоб, к. Неъматов-7 93-500-01-67'),
              const SizedBox(height: 20),
              _khatlonContainer('ТЧ «Дилафруз», ш. Бохтар, к. Дустии халкхо-68 91-865-92-93; (8-3222) 279-10; ngodilafruz@mail.ru'),
              const SizedBox(height: 20),
              _khatlonContainer('ТЧ «Бонувони фардо», н. Шахритус, к. И. Сомонй-28б (8-3240) 228-88; anora.69@mail.ru'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}