import 'package:flutter/material.dart';
import 'package:lows_app/pages/dasturamal_page.dart';
import 'package:lows_app/pages/help_page.dart';
import 'package:lows_app/pages/laws_page.dart';
import 'package:lows_app/pages/main_page.dart';
import 'package:lows_app/pages/tanzimot_page.dart';

class NavigationMenu extends StatefulWidget {
  final int selectedIndex;
  const NavigationMenu({Key? key, this.selectedIndex = 0}) : super(key: key);

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
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
           MainPage(),
           HelpPage(),
           DasturamalPage(),
           TanzimotPage(),
           LawsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Асоси',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Кумак',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_document),
            label: 'Дастурамал',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pentagon),
            label: 'Танзимот',
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
