import 'package:flutter/material.dart';
import 'package:lows_app/pages/dushanbe_page.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:lows_app/pages/ntm_page.dart';
import 'package:lows_app/pages/vmkb_page.dart';

class StatesPage extends StatefulWidget {
  const StatesPage({super.key});

  @override
  State<StatesPage> createState() => _StatesPageState();
}

class _StatesPageState extends State<StatesPage> {
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
                   Navigator.pushNamed(context, '/Khujand');
                  },
                  child: _stateContainer('вилояти Сугд')),
              const SizedBox(height: 20),
               GestureDetector(
                  onTap: () {
                   Navigator.pushNamed(context, '/Khatlon');
                  },
                  child: _stateContainer('вилояти Хатлон')),
              const SizedBox(height: 20), GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const VMKBPage()));
                  },
                  child: _stateContainer('ВМКБ')),
              const SizedBox(height: 20), GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const NTMPage()));
                  },
                  child: _stateContainer('нохияхои тобеъи\nмарказ')),
              const SizedBox(height: 20), GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const DushanbePage()));
                  },
                  child: _stateContainer('ш.Душанбе')),
                
            ],
          ),
        ),
      ),
    );
  }
}
