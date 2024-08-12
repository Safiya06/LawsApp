import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Ntm15RuPage extends StatefulWidget {
  const Ntm15RuPage({super.key});

  @override
  State<Ntm15RuPage> createState() => _Ntm15RuPageState();
}

class _Ntm15RuPageState extends State<Ntm15RuPage> {
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
              _ntmContainer('г. Вахдат\nЦентральная городская больница, ул. 20-летие Независимости\n935-26-69-00; 907-94-81-32; 935-26-69-02'),
              const SizedBox(height: 20),
              _ntmContainer('р. Рашт, Центральная районная больница, ул. И. Сомони-14\n985-98-52-01; 918-21-55-05;\n988-64-44-65; 988-43-99-66'),
              const SizedBox(height: 20),
              _ntmContainer('р. Гисар, Центральная районная больница\n907-52-51-04'),
              const SizedBox(height: 20),
              _ntmContainer('н. Рудаки, Центральная районная больница\n904-02-25-15'),
              const SizedBox(height: 20),
              ],
          ),
        ),
      ),
    );
  }
}
