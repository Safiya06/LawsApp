import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khujand12Page extends StatefulWidget {
  const Khujand12Page({super.key});

  @override
  State<Khujand12Page> createState() => _Khujand12PageState();
}

class _Khujand12PageState extends State<Khujand12Page> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 60, right: 60, top: 18, bottom: 18),
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
                  'Вилояти Сугд (8-3422) 4-68-50; 4-65-37; 92-919-90-60'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Хучанд (8-3422) 4-67-25; 92-770-37-47'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Исфара (8-3462) 2-44-22; 918-97-93-59'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Бустон (8-4744) 822-44; 92-712-60-92'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Конибодом (8-3467) 322-44'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Гулистон (8-3443) 240-26; 93-870-02-41'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Истиклол (8-3465) 2-54-87; 92-808-50-05'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Панчакент (8-3475) 5-53-94'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Истаравшан (8-3454) 2-44-65; 98-707-14-60'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Айни (8 34 79) 2-28-71; 93-583-93-00'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Ашт (8-3453) 214-30; 92-894-22-92'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Зафаробод (8-34-52) 5-24-63; 92-625-84-87'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Б. Гафуров (8-3442) 3-36-73; 92-764-38-97'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Деваштич (8-3464) 243-79'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Ч. Расулов (8-34-55) 2-11-30; 92-600-15-73'),
              const SizedBox(height: 20),
               _khatlonContainer(
                  'н. Спитамен (8-3441) 2-22-44'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Шахристон (8-3456) 2-63-35; 92-787-30-35'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Мастчох (8-3445) 2-23-15; 93-129-99-01; 92-921-07-77'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
