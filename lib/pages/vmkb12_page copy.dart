import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Vmkb12Page extends StatefulWidget {
  const Vmkb12Page({super.key});

  @override
  State<Vmkb12Page> createState() => _Vmkb12PageState();
}

class _Vmkb12PageState extends State<Vmkb12Page> {
  Widget _vmkbContainer(String value) {
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
              _vmkbContainer('ВМКБ\n(8-3522) 248-80;\n507-77-04-32'),
              const SizedBox(height: 20),
               _vmkbContainer('ш. Xopуг\n(8-3522) 268-77;\n93-585-40-01'),
              const SizedBox(height: 20),
               _vmkbContainer('н. Дарвоз\n(8-3552) 215-87\n93-480-13-44'),
              const SizedBox(height: 20),
               _vmkbContainer('н. Ванч\n(8-3551) 213-52;\n93-924-29-34'),
              const SizedBox(height: 20),
               _vmkbContainer('н. Рошткальа\n(8-3555) 210-33;\n93-771-05-53'),
              const SizedBox(height: 20),
               _vmkbContainer('н. Рушон\n(8-3556) 217-40\n93-812-33-22'),
              const SizedBox(height: 20),
               _vmkbContainer('н. Ишкошим\n(8-3553) 210-24;\n93-408-66-31'),
              const SizedBox(height: 20),
               _vmkbContainer('н. Шугнон\n(8-3522) 305-36;\n501-55-19-11'),
              const SizedBox(height: 20),
               _vmkbContainer('н. Мургоб\n(8-3554) 212-32\n502-8-58-08'),
            
            ],
          ),
        ),
      ),
    );
  }
}