import 'package:flutter/material.dart';
import 'package:lows_app/components/navigation_menu.dart';
import 'package:lows_app/pages/dastur1_page.dart';
import 'package:lows_app/pages/dastur2_page.dart';
import 'package:lows_app/pages/dastur3_page.dart';
import 'package:lows_app/pages/dastur4_page.dart';
import 'package:lows_app/pages/dastur5_page.dart';
import 'package:lows_app/pages/dastur6_page.dart';
import 'package:lows_app/pages/dastur7_page.dart';
import 'package:lows_app/pages/dastur8_page.dart';
import 'package:lows_app/pages/dasturamal_page.dart';
import 'package:lows_app/pages/dushanbe_page.dart';
import 'package:lows_app/pages/khatlon_page.dart';
import 'package:lows_app/pages/khujand_page.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:lows_app/pages/ntm_page.dart';
import 'package:lows_app/pages/states_page.dart';
import 'package:lows_app/pages/vmkb_page.dart';
import 'package:lows_app/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      initialRoute: '/',
      routes: {
        '/Main':(context) => MainPage(),
        '/State':(context) => StatesPage(),
        '/Dasturamal':(context) => DasturamalPage(),
        '/Dastur1':(context) => Dastur1Page(),
        '/Dastur2':(context) => Dastur2Page(),
        '/Dastur3':(context) => Dastur3Page(),
        '/Dastur4':(context) => Dastur4Page(),
        '/Dastur5':(context) => Dastur5Page(),
        '/Dastur6':(context) => Dastur6Page(),
        '/Dastur7':(context) => Dastur7Page(),
        '/Dastur8':(context) => Dastur8Page(),
        '/Khujand':(context) => KhujandPage(),
        '/Vmkb':(context) => VMKBPage(),
        '/Ntm':(context) => NTMPage(),
        '/Dushanbe':(context) => DushanbePage(),
        '/Khatlon':(context) => KhatlonPage(),
        
      },
      debugShowCheckedModeBanner: false,
      home: NavigationMenu(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
