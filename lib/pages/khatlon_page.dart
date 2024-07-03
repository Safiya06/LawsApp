import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class KhatlonPage extends StatefulWidget {
  const KhatlonPage({super.key});

  @override
  State<KhatlonPage> createState() => _KhatlonPageState();
}

class _KhatlonPageState extends State<KhatlonPage> {
  Widget _khatlonContainer(String value) {
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
              _khatlonContainer('Вилояти Хатлон\n(8-3222) 2-16-16;\n988-06-44-40'),
              const SizedBox(height: 20),
              _khatlonContainer('Вилояти Хатлон\n(8-3222) 2-16-16;\n907-75-35-05'),
              const SizedBox(height: 20),
              _khatlonContainer('ш. Бохтар\n(8-3222) 2-27-46;\n905-70-45-55'),
              const SizedBox(height: 20),
              _khatlonContainer('ш. Норак\n(8-31 38) 2-24-53;\n93-733-80-08'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Левакант\n(8-3250) 6 14 20;\n907 30 56 66'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Ёвон\n(8-3141) 2-11-48;\n93-853-18-18'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Кушониён\n(8-3245) 2-11-83;\n917-57-23-24'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Восеъ\n(8-3311) 2-27-16;\n988-34-92-29'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Дангара\n(8-3312) 2-15-84;\n988-23-20-79'),
              const SizedBox(height: 20),
              _khatlonContainer('Темурмалик\n(8-3314) 2-11-92;\n907-21-96-68'),
              const SizedBox(height: 20),
              _khatlonContainer('Хуросон\n(8-3242) 2-17-97;\n917-90-38-18'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Ч. Балхй\n(8-3247) 4-37-72\n917-04-43-43'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Кубодиён\n(8-3251) 2-27-17'),
              const SizedBox(height: 20),
              _khatlonContainer('н. А. Хамадонй\n(8-3315) 2-20-95:\n93-177-21-67'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Н. Хусрав\n(8-3258) 2-22-37;\n93-999-63-22'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Муъминобод\n(8-3318) 2-12-21;\n98-733-12-67'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Панч\n(8-3252) 231-84-10\n93-355-12-48'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Чайхун\n(8-3249) 4-33-15;\n93-108-09-85'),
              const SizedBox(height: 20),
              _khatlonContainer('н. А. Чоми\n(8-3243) 2-34-11;\n93-909-07-80'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Балчувон\n(8-3357) 2-13-36;\n98-710-83-16'),
              const SizedBox(height: 20),
              _khatlonContainer( 'н. Вахш\n(8-3346) 2-36-53;\n93-838-88-38'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Фархор\n(8-3316) 2-11-27;\n900-58-10-15'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Ховалинг\n(8-3317) 2-00-33;\n988-08-96-83'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Шахритус\n(8-3240) 2-10-49;\n93-399-88-18'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Ш. Шохин\n(8-3319) 2-14-19;\n918-44-45-37'),
              const SizedBox(height: 20),
              _khatlonContainer('н. Дусти\n(8-3248) 2-13-88;\n93-592-37-22'),
             
            ],
          ),
        ),
      ),
    );
  }
}
