import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon12Page extends StatefulWidget {
  const Khatlon12Page({super.key});

  @override
  State<Khatlon12Page> createState() => _Khatlon12PageState();
}

class _Khatlon12PageState extends State<Khatlon12Page> {
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
                  'Вилояти Хатлон (8-3222) 2-16-16; 907-75-35-05'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'Вилояти Хатлон (8-3222) 2-16-16; 988-06-44-40'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Бохтар (8-3222) 2-27-46; 905-70-45-55'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Кулоб 8-3322) 2-26-41; 918-25-19-19'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'ш. Норак (8-31 38) 2-24-53; 93-733-80-08'),
              const SizedBox(height: 20),
               _khatlonContainer(
                  'н. Левакант (8-3250) 6 14 20; 907 30 56 66'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Ёвон (8-3141) 2-11-48; 93-853-18-18'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Кушониён (8-3245) 2-11-83; 917-57-23-24'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Восеъ (8-3311) 2-27-16; 988-34-92-29'),
              const SizedBox(height: 20), 
              _khatlonContainer(
                  'H. AaHfapa (8-3312) 2-15-84; 988-23-20-79'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'Темурмалик (8-3314) 2-11-92; 907-21-96-68'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'Хуросон (8-3242) 2-17-97; 917-90-38-18'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Ч. Балхй (8-3247) 4-37-72 917-04-43-43'),
              const SizedBox(height: 20), 
              _khatlonContainer(
                  'н. Кубодиён (8-3251) 2-27-17'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. А. Хамадонй (8-3315) 2-20-95: 93-177-21-67'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Н. Хусрав (8-3258) 2-22-37; 93-999-63-22'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Муьминобод (8-3318) 2-12-21; 98-733-12-67'),
              const SizedBox(height: 20), 
              _khatlonContainer(
                  'н. А. Чомй (8-3243) 2-34-11; 93-909-07-80'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Вахш (8-3346) 2-36-53: 93-838-88-38'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Фархор (8-3316) 2-11-27; 900-58-10-15'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Ховалинг (8-3317) 2-00-33: 988-08-96-83'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Шахритус (8-3240) 2-10-49; 93-399-88-18'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Ш. Шохин (8-3319) 2-14-19; 918-44-45-37'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'н. Дусти (8-3248) 2-13-88; 93-592-37-22'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
