import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Vmkb14RuPage extends StatefulWidget {
  const Vmkb14RuPage({super.key});

  @override
  State<Vmkb14RuPage> createState() => _Vmkb14RuPageState();
}

class _Vmkb14RuPageState extends State<Vmkb14RuPage> {
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
                context, MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _khatlonContainer('г. Хоруг\nздание Управления юстиции\nГБАО, ул. Гагарина-14, 3 этаж\n935-34-25-99; 935-01-05-91'),
              const SizedBox(height: 20),
              _khatlonContainer('р. Ванч, ул. М. Рахмоншо-36 (Фурудгох)\n933-55-95-73'),
              ],
          ),
        ),
      ),
    );
  }
}
