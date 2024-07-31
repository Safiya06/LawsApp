import 'package:flutter/material.dart';
import 'package:lows_app/components/navigation_menu_ru.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class TanzimotPage extends StatelessWidget {
  const TanzimotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            const Center(
              child: Text(
                'Танзимот',
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
                Text(
                  'Change language',
                  style: TextStyle(
                      color: Color(0xff654900),
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavigationMenuRu()));
                    },
                    icon: Icon(Icons.language))
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
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 3),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context).colorScheme.primary, width: 3),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: const Text(
                'Бехатарии шаҳрвандон барои фароҳам овардани зиндагии ором ва ҳифзи ҳуқуқу озодиҳои инсон аҳамияти калон дорад. Таъмини ин амният ба рушди устувори ҷомеа ва эътимоди байни шаҳрвандон ва давлат мусоидат мекунад.',
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
