import 'package:flutter/material.dart';
import 'package:impludehack/screens/calender/Calender1.dart';
import 'package:impludehack/screens/consulting/consulting_screen.dart';
import 'package:impludehack/screens/diary/diary_screen.dart';
import 'package:impludehack/screens/findme/findme_screen.dart';
import 'package:impludehack/screens/hospital/hospital_screen.dart';

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
  static List<Widget> pages = <Widget>[
    HospitalScreen(),
    ConsultingScreen(initMenu: 0),
    Calender1(),
    SizedBox(
      height: 10,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: NavigationBar(
          backgroundColor: Colors.blue,
          labelBehavior: labelBehavior,
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
            setState(() {});
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
      ),
      body: pages[currentPageIndex],
    );
  }
}
