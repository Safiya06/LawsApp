import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dastur7RuPage extends StatefulWidget {
  const Dastur7RuPage({super.key});

  @override
  State<Dastur7RuPage> createState() => _Dastur7RuPageState();
}

class _Dastur7RuPageState extends State<Dastur7RuPage> {
  Widget _dasturContainer(String value, double size) {
    return Container(
      // height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: TextStyle(
                color: Colors.white,
                fontSize: size,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
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
                MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur71Ru');
                },
                child: _dasturContainer(
                    'Конвенция о ликвидации всех форм дискриминации в отношении женщин',
                    34),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur72Ru');
                },
                child: _dasturContainer(
                    'Пекинская декларация и Платформа действий', 34),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
