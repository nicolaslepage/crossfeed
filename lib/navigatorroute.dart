import 'package:flutter/material.dart';

// You can use a relative import, i.e. `import 'category.dart';` or
// a package import, as shown below.
// More details at http://dart-lang.github.io/linter/lints/avoid_relative_lib_imports.html
import 'category_route.dart';

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    CategoryRoute(),
    Text(
      'Index 1: Add WOD',
      style: optionStyle,
    ),
    Text(
      'Index 2: Benchmark list',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: RichText(
          text: TextSpan(
            text: 'Cross',
            style: TextStyle(
                fontSize: 30,
                color: Colors.red.shade900,
                fontWeight: FontWeight.bold),
            children: const <TextSpan>[
              TextSpan(
                  text: '/',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'Feed',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        backgroundColor: Colors.brown[50],
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
            icon: Icon(Icons.add_circle_outline_rounded),
            activeIcon: Icon(Icons.add_circle_rounded),
            label: 'Add WOD',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage('assets/fist_outlined.png'),),
            activeIcon: ImageIcon( AssetImage('assets/fist.png'),),
            label: 'Benchmark list',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait_outlined),
            activeIcon: Icon(Icons.portrait),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,

        selectedItemColor: Colors.black,
        selectedLabelStyle : const TextStyle( fontWeight: FontWeight.bold),

        backgroundColor: Colors.brown[200],
        iconSize: 30.0,

        onTap: _onItemTapped,
      ),
    );
  }
}
