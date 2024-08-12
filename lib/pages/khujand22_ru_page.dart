import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Khujand22RuPage extends StatefulWidget {
  const Khujand22RuPage({super.key});

  @override
  State<Khujand22RuPage> createState() => _Khujand22RuPageState();
}

class _Khujand22RuPageState extends State<Khujand22RuPage> {
  Widget _khujandContainer(String value) {
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
                context, MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _khujandContainer('РЦЖ «ASTI», г. Худжанд\nул. Шуро-24\n927-77-90-15\nasti.tajikistan@gmail.com'),
              const SizedBox(height: 20),
              _khujandContainer('РЦЖ «Кухсор», р. Аинӣ, ул. Рудаки-55\n927-62-40-40; 935-45-19-20\ngulchehra.04@mail.ru'),
              const SizedBox(height: 20),
              _khujandContainer('РЦЖ «Занони Шарк»\nг. Пенджикент, ул. Рудаки-85\n928-09-29-28\nnotima@mail.ru'),
              const SizedBox(height: 20),
              _khujandContainer('РЦЖ «Маркази дастгирии ҷамоати Ворух», г. Исфара, джамоати Ворух, ул. Рудаки-123А\n989-10-72-44\ngolibu@mail.ru'),
              const SizedBox(height: 20),
              _khujandContainer('РЦЖ «Занон барои адолат»\nг.Худжанд, ул. Кирмоншо-1\n938-36-45-45\nfarosat_kiba@bk.ru'),
              const SizedBox(height: 20),
              _khujandContainer('РЦЖ «Умед», г. Исфара\nул. Маркази-22\n927-70-04-06\numed_i@mail.ru'),
              const SizedBox(height: 20),
              _khujandContainer('РЦЖ «Занхо зидди зӯроварӣ»\nш. Истаравшан, ул. И. Сомони-186\n988-65-31-65; 918-80-35-54 nasrulloevb@yahoo.com\nsheroz-com@mail.ru'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}