import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Dushanbe13Page extends StatefulWidget {
  const Dushanbe13Page({super.key});

  @override
  State<Dushanbe13Page> createState() => _Dushanbe13PageState();
}

void _launchDialer(String phoneNumber) async {
  final Uri url = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _Dushanbe13PageState extends State<Dushanbe13Page> {
  Widget _dushanbeContainer(String value) {
    return Container(
      // height: MediaQuery.of(context).size.height*0.16,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          )),
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
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _launchDialer('221-79-89'),
                child: _dushanbeContainer(
                    'Ваколатдор оид ба\nҳуқуқи инсон дар ҶТ\n101; 221-79-89'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('221-76-02'),
                  child:
                      _dushanbeContainer('Муовини Ваколатдор\n103; 221-76-02')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('918-26-03-03'),
                child: _dushanbeContainer(
                    'Роҳбари Дастгоҳи\nВаколатдор\n105; 221-76-01; 918-26-03-03'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('919-53-00-46'),
                  child: _dushanbeContainer(
                      'Сардори Шуъба\n106; 221-46-92;\n919-53-00-46')),
              const SizedBox(height: 20), 
              GestureDetector(
                onTap: () => _launchDialer('93-999-68-68'),
                child: _dushanbeContainer(
                    'Муовини сардори Шуъба\n120; 221-74-39;\n939-99-68-68'),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('935-66-84-40'),
                  child: _dushanbeContainer(
                      'Сармутахассис\n120; 221-74-39;\n935-66-84-40')),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchDialer('93-546-00-12'),
                child: _dushanbeContainer(
                    'Мутахассиси пешбар\n120; 221-74-39;\n935-46-00-12'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
