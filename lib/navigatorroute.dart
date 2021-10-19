import 'package:flutter/material.dart';

import 'wodlist_route.dart';

import '/page/profile_page.dart';


// You can use a relative import, i.e. `import 'category.dart';` or
// a package import, as shown below.
// More details at http://dart-lang.github.io/linter/lints/avoid_relative_lib_imports.html
import 'category_route.dart';

/// This is the stateful widget that the main application instantiates.
class navigator_route extends StatefulWidget {
  const navigator_route({Key? key}) : super(key: key);

  @override
  State<navigator_route> createState() => _navigator_routeState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _navigator_routeState extends State<navigator_route> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const CategoryRoute(),
    Wodlist_route(),
    const Text(
      'Index 1: Add WOD',
      style: optionStyle,
    ),
    const Text(
      'Index 4: Challenges',
      style: optionStyle,
    ),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: RichText(
          text: const TextSpan(
            text: 'Cross',
            style: TextStyle(
                fontSize: 30,
                color: Color(0xFFEE293A),
                fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: '/',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF2D1A45),
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'Feed',
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF54C1A2),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/fist_outlined.png'),),
            activeIcon: ImageIcon( AssetImage('assets/fist.png'),),
            label: 'Benchmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_rounded),
            activeIcon: Icon(Icons.add_circle_rounded),
            label: 'Add WOD',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/conquer_outlined.png'),),
            activeIcon: ImageIcon( AssetImage('assets/conquer.png'),),
            label: 'Challenges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait_outlined),
            activeIcon: Icon(Icons.portrait),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,

        selectedItemColor: Color(0xFFEE293A),
        unselectedItemColor: Color(0xFF2D1A45),
        unselectedFontSize: 10,
        selectedLabelStyle : const TextStyle( fontWeight: FontWeight.bold),

        backgroundColor: Colors.white,
        iconSize: 25.0,

        onTap: _onItemTapped,
      ),
    );
  }
}
