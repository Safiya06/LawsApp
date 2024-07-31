import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khatlon12RuPage extends StatefulWidget {
  const Khatlon12RuPage({super.key});

  @override
  State<Khatlon12RuPage> createState() => _Khatlon12RuPageState();
}

class _Khatlon12RuPageState extends State<Khatlon12RuPage> {
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
                  'Хатлонская область\n222-16-16;\n907-75-35-05'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'Хатлонская область\n222-16-16;\n988-06-44-40'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'г.Бохтар\n222-27-46;\n905-70-45-55'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'г.Куляб\n918-25-19-19'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'г. Норак\n937-33-80-08'),
              const SizedBox(height: 20),
               _khatlonContainer(
                  'р. Левакант\n907-30-56-66'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'р. Яван\n938-53-18-18'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'р. Кушониён\n917-57-23-24'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'р. Восе\n988-34-92-29'),
              const SizedBox(height: 20), 
              _khatlonContainer(
                  'р.Дангара\n988-23-20-79'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'Темурмалик (8-3314) 2-11-92; 907-21-96-68'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'Хуросон (8-3242) 2-17-97; 917-90-38-18'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'р. Дж. Балхӣ\n917-04-43-43'),
              const SizedBox(height: 20), 
              _khatlonContainer(
                  'p. Кубодиён (8-3251) 2-27-17'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'p. А. Хамадонй (8-3315) 2-20-95: 93-177-21-67'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'p. Н. Хусрав (8-3258) 2-22-37; 93-999-63-22'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'p. Муминобод (8-3318) 2-12-21; 98-733-12-67'),
              const SizedBox(height: 20), 
              _khatlonContainer(
                  'p. А. Чомй (8-3243) 2-34-11; 93-909-07-80'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'p. Вахш (8-3346) 2-36-53: 93-838-88-38'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'p. Фархор (8-3316) 2-11-27; 900-58-10-15'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'p. Ховалинг (8-3317) 2-00-33: 988-08-96-83'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'p. Шахритус (8-3240) 2-10-49; 93-399-88-18'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'p. Ш. Шохин (8-3319) 2-14-19; 918-44-45-37'),
              const SizedBox(height: 20),
              _khatlonContainer(
                  'p. Дусти (8-3248) 2-13-88; 93-592-37-22'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
