import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Dushanbe21Page extends StatefulWidget {
  const Dushanbe21Page({super.key});

  @override
  State<Dushanbe21Page> createState() => _Dushanbe21PageState();
}

class _Dushanbe21PageState extends State<Dushanbe21Page> {
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
              _khatlonContainer('Маркази дастгирӣ «Фемида»\nх. Рӯдакӣ-137\n935-01-62-92\nfemida-tj@mail.ru'),
              const SizedBox(height: 20),
              _khatlonContainer('Маркази Худшиносии Занон\n935-17-77-56\nmarkazi.bonuvon '),
              const SizedBox(height: 20),
              _khatlonContainer('ТҶ «Лигаи занони ҳуқуқшинос»\nк. Айнӣ, 32/2, х. 7\n221-21-49\nlwl_toj@rambler.ru'),
              const SizedBox(height: 20),
              _khatlonContainer('ТҶ «Корвони умед»\nк. Н. Хисрав, х. 11\n900-00-12-22'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}