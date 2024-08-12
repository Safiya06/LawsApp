import 'package:flutter/material.dart';
import 'package:lows_app/components/navigation_menu.dart';

class TanzimotRuPage extends StatelessWidget {
  const TanzimotRuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.background,),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            const Center(
              child: Text(
                'Настройки',
                style: TextStyle(
                    color: Color(0xFF654900),
                    fontSize: 36,
                    fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/tanzimot_icon.png',
              width: 50,
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              children: [
                TextButton.icon(onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavigationMenu()));
                    }, icon: const Icon(Icons.language), label: const Text('Изменить язык',style: TextStyle(
                      color: Color(0xff654900),
                      fontSize: 22,
                      fontWeight: FontWeight.w800),))
               
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              height: 18,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                border: Border.all(color: Theme.of(context).colorScheme.primary, width: 3),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.primary, width: 3),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: const Text(
                'Здесь в этих настройках, Вы можете с легкостью изменить язык приложения. Вы можете поменять на русский либо на таджикский язык. Так, как Вам будет удобно.',
                style: TextStyle(
                    color: Color(0xff654900),
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              ),
            )
          ]),
        ));
  }
}
