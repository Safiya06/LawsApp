import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class States2RuPage extends StatefulWidget {
  const States2RuPage({super.key});

  @override
  State<States2RuPage> createState() => _States2RuPageState();
}

class _States2RuPageState extends State<States2RuPage> {
  Widget _stateContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Icon(
            Icons.chevron_right_outlined,
            size: 24,
            color: Colors.white,
          ),
        ],
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
              GestureDetector(
                  onTap: () {
                   Navigator.pushNamed(context, '/Khujand2Ru');
                  },
                  child: _stateContainer('Согдийская область')),
              const SizedBox(height: 20),
               GestureDetector(
                  onTap: () {
                   Navigator.pushNamed(context, '/Khatlon2Ru');
                  },
                  child: _stateContainer('Хатлонская область')),
              const SizedBox(height: 20), GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,'/Vmkb2Ru');
                  },
                  child: _stateContainer('ГБАО')),
              const SizedBox(height: 20), GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,'/Ntm2Ru');
                  },
                  child: _stateContainer('Районы\nреспубликанского\nподчинения')),
              const SizedBox(height: 20), GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context,'/Dushanbe2Ru');
                  },
                  child: _stateContainer('г.Душанбе')),
                
            ],
          ),
        ),
      ),
    );
  }
}
