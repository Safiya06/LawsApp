import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Ntm14RuPage extends StatefulWidget {
  const Ntm14RuPage({super.key});

  @override
  State<Ntm14RuPage> createState() => _Ntm14RuPageState();
}

class _Ntm14RuPageState extends State<Ntm14RuPage> {
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
                context, MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _ntmContainer('г. Турсунзаде\nздание Народно-Демократической партии'),
              const SizedBox(height: 20),
              _ntmContainer('р. Рашт, ул. И.Сомони-42\n888-83-90-90; 935-97-44-00'),
              ],
          ),
        ),
      ),
    );
  }
}
