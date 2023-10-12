import 'package:flutter/material.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
          setState(() {
            labelBehavior = NavigationDestinationLabelBehavior.onlyShowSelected;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.room_outlined),
            icon: Icon(Icons.room),
            label: 'Hospital',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.textsms_outlined),
            icon: Icon(Icons.textsms),
            label: 'Consulting',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.today_outlined),
            icon: Icon(Icons.today),
            label: 'Diary',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person_2_outlined),
            icon: Icon(Icons.person),
            label: 'Hospital',
          ),
        ],
      ),
      body: Center(),
    );
  }
}
