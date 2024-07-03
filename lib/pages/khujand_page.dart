import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class KhujandPage extends StatefulWidget {
  const KhujandPage({super.key});

  @override
  State<KhujandPage> createState() => _KhujandPageState();
}

class _KhujandPageState extends State<KhujandPage> {
  Widget _khujandContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 140,
width: MediaQuery.of(context).size.width,      decoration: BoxDecoration(
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
              _khujandContainer('Вилояти Сугд\n(8-3422) 4-68-50; 4-65-37;\n92-919-90-60'),
              const SizedBox(height: 20),
              _khujandContainer('ш. Хучанд\n(8-3422) 4-67-25;\n92-770-37-47'),
              const SizedBox(height: 20),
              _khujandContainer('ш. Исфара\n(8-3462) 2-44-22;\n918-97-93-59'),
              const SizedBox(height: 20),
              _khujandContainer('ш. Конибодом\n(8-3467) 322-44'),
              const SizedBox(height: 20),
              _khujandContainer('ш.Гулистон\n(8-3443)240-26;\n92-808-50-05'),
              const SizedBox(height: 20),
              _khujandContainer('ш.Истиклол\n(8-3465) 2-54-87;\n92-808-50-05'),
              const SizedBox(height: 20),
              _khujandContainer('ш.Панчакент\n(8-3475) 5-53-94'),
              const SizedBox(height: 20),
              _khujandContainer('ш.Истаравшан\n(8-3454) 2-44-65;\n98-707-14-60'),
              const SizedBox(height: 20),
              _khujandContainer('н.Айни\n(8 34 79) 2-28-71;\n93-583-93-00'),
              const SizedBox(height: 20),
              _khujandContainer('н.Ашт\n(8-34-52) 5-24-63;\n92-625-84-87'),
              const SizedBox(height: 20),
              _khujandContainer('ш. Зафаробод\n(8-34-52) 5-24-63;\n92-625-84-87'),
              const SizedBox(height: 20),
              _khujandContainer('н. Б.Гафуров\n(8-3442) 3-36-73;\n92-764-38-97'),
              const SizedBox(height: 20),
              _khujandContainer('н. Деваштич\n(8-3464) 243-79'),
              const SizedBox(height: 20),
              _khujandContainer('н. Ч. Расулов\n(8-34-55) 2-11-30;\n92-600-15-73'),
              const SizedBox(height: 20),
              _khujandContainer('н. Спитамен\n(8-3441) 2-22-44'),
              const SizedBox(height: 20),
              _khujandContainer('н. Шахристон\n(8-3456) 2-63-35;\n92-787-30-35'),
              const SizedBox(height: 20),
              _khujandContainer('н. Мастчох\n(8-3445) 2-23-15\n93-129-99-01;92-921-07-77'),
            ],
          ),
        ),
      ),
    );
  }
}
