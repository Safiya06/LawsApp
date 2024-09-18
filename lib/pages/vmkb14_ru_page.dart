import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Vmkb14RuPage extends StatefulWidget {
  const Vmkb14RuPage({super.key});

  @override
  State<Vmkb14RuPage> createState() => _Vmkb14RuPageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Vmkb14RuPageState extends State<Vmkb14RuPage> {
  Widget _khatlonContainer(String value) {
    return Container(
      padding: const EdgeInsets.only(left: 25,right: 25,top: 18,bottom: 18),
      // height: MediaQuery.of(context).size.height*0.19,
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
              fontSize: 20, fontWeight: FontWeight.w800, color: Colors.white),
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
                context, MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer(' 935-01-05-91'),
                child: _khatlonContainer('г. Хоруг\nздание Управления юстиции\nГБАО, ул. Гагарина-14, 3 этаж\n935-34-25-99; 935-01-05-91')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('933-55-95-73'),
                child: _khatlonContainer('р. Ванч, ул. М. Рахмоншо-36 (Фурудгох)\n933-55-95-73')),
              ],
          ),
        ),
      ),
    );
  }
}
