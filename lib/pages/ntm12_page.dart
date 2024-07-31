import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Ntm12Page extends StatefulWidget {
  const Ntm12Page({super.key});

  @override
  State<Ntm12Page> createState() => _Ntm12PageState();
}

class _Ntm12PageState extends State<Ntm12Page> {
  Widget _ntmContainer(String value) {
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
              _ntmContainer('н. Рудакй\n(8-3137) 2-18-78;\n904-48-84-55'),
              const SizedBox(height: 20),
              _ntmContainer('н. Вахдат\n(8-3136) 225-00;\n900-66-77-78'),
              const SizedBox(height: 20),
              _ntmContainer('н. Рудаки\n900-27-81-81'),
              const SizedBox(height: 20),
              _ntmContainer('ш. Хисор\n907-17-36-36'),
              const SizedBox(height: 20),
              _ntmContainer('н. Варзоб\n(8-3153) 2-10-54;\n93-888-54-23'),
              const SizedBox(height: 20),
              _ntmContainer('н. Хиссор\n(8-3139) 2-77-39;\n93-744-19-42'),
              const SizedBox(height: 20),
              _ntmContainer('н. Шахринав\n(8-3155) 316-15;\n909-19-09-37'),
              const SizedBox(height: 20),
              _ntmContainer('н. Турсунзода\n(8-3130) 2-16-47;\n907-19-68-68'),
              const SizedBox(height: 20),
              _ntmContainer('н. Файзобод\n(8-3135) 3-23-84;\n93-564-62-68'),
              const SizedBox(height: 20),
              _ntmContainer('н. Рогун\n(8-3134) 2-11-44;\n93-829-16-66'),
              const SizedBox(height: 20),
              _ntmContainer('н. Нуробод\n(8-3133) 300-97;\n988-76-76-64'),
              const SizedBox(height: 20),
              _ntmContainer( 'н. Точикобод\n(8-3154) 214-73;\n937-18-02-89'),
              const SizedBox(height: 20),
              _ntmContainer('н. Сангвор\n(8-3156) 223-70\n987-97-66-13'),
              const SizedBox(height: 20),
              _ntmContainer('н. Рашт\n(8-3131) 223-397'),
              const SizedBox(height: 20),
              _ntmContainer('н. Лахш\n(8-3132) 224-69'),
            ],
          ),
        ),
      ),
    );
  }
}