import 'package:flutter/material.dart';
import 'package:lows_app/pages/laws_ru_page.dart';
import 'package:lows_app/pages/states1_ru_page.dart';
import 'package:lows_app/pages/states2_ru_page.dart';

class MainRuPage extends StatefulWidget {
  const MainRuPage({Key? key,});

  @override
  State<MainRuPage> createState() => _MainRuPageState();
}

class _MainRuPageState extends State<MainRuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Главная страница',
              style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.w800,
                color: Color(0xFF654900),
              ),
            ),
            const SizedBox(height: 20), 
            InkWell(
              onTap: () {
               
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const States1RuPage()));
              },
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Государственные органы и учреждения',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                        size: 24,
                        color: Colors.white,
                      ),
                    ],

                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const States2RuPage()));
              },
              borderRadius: BorderRadius.circular(
                  25), // Optional, for rounded ripple effect
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Общественные организации и шелтеры',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                        size: 24,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
             const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LawsRuPage()));
              },
              borderRadius: BorderRadius.circular(
                  25), // Optional, for rounded ripple effect
              child: Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Закон',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right_outlined,
                        size: 24,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
