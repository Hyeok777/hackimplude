import 'package:flutter/material.dart';
import 'package:impludehack/screens/cheerup/cheerup_screen.dart';
import 'package:impludehack/screens/depressionTest/Test2.dart';
import 'package:impludehack/screens/diary/diary_screen.dart';
import 'package:impludehack/screens/findme/findme_screen.dart';
import 'package:impludehack/screens/weekChallenge/week_Challenge_screen.dart';

class ConsultingScreen extends StatefulWidget {
  final int initMenu;
  const ConsultingScreen({super.key, required this.initMenu});

  @override
  State<ConsultingScreen> createState() => _ConsultingScreenState();
}

class _ConsultingScreenState extends State<ConsultingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 4, vsync: this, initialIndex: widget.initMenu);
    // Listen to tab index changes
    _tabController.addListener(() {
      setState(() {}); // This will rebuild the IndexedStack with the new index.
    });
  }

  @override
  void dispose() {
    _tabController.removeListener(() {}); // Clean up the listener
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const SizedBox(height: 0),
        bottom: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.white,
          indicatorColor: Colors.white,
          tabs: [
            customTab(icon: Icons.medication_liquid, text: '우울감 진단'),
            customTab(icon: Icons.chat_outlined, text: '털어놓기'),
            customTab(icon: Icons.person_pin_rounded, text: '나를 찾아서'),
            customTab(icon: Icons.flag, text: '일일 챌린지'),
            customTab(icon: Icons.menu_book, text: '너를 응원해'),
          ],
        ),
      ),
      body: IndexedStack(
        index: _tabController.index,
        children: [
          Test2(),
          DiaryScreen(),
          BoxColumn(),
          WeekChallengeScreen(),
          LikeButtonDemo(),
        ],
      ),
    );
  }

  Widget customTab({required IconData icon, required String text}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 40),
        const SizedBox(height: 2),
        Text(
          text,
          style: const TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
