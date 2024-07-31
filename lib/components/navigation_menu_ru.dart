import 'package:flutter/material.dart';
import 'package:lows_app/pages/dasturamal_ru_page.dart';
import 'package:lows_app/pages/help_ru_page.dart';
import 'package:lows_app/pages/main_ru_page.dart';
import 'package:lows_app/pages/tanzimot_ru_page.dart';

class NavigationMenuRu extends StatefulWidget {
  final int selectedIndex;
  const NavigationMenuRu({Key? key, this.selectedIndex = 0}) : super(key: key);

  @override
  State<NavigationMenuRu> createState() => _NavigationMenuRuState();
}

class _NavigationMenuRuState extends State<NavigationMenuRu> {
  late int _selectedIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  void _navigateToLowsPage() {
    setState(() {
      _selectedIndex = 4; // index for LowsPage
    });
    _pageController.jumpToPage(4);
  }

  void _navigateBack(){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        children: const [
           MainRuPage(),
           HelpRuPage(),
           DasturamalRuPage(),
           TanzimotRuPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Помощь',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_document),
            label: 'Справочник',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pentagon),
            label: 'Настройки',
          ),
        ],
        currentIndex: _selectedIndex < 4 ? _selectedIndex : 0, // Ensure index is within bounds
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).colorScheme.primary,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
