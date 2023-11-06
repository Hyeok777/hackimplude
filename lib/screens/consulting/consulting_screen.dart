import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impludehack/screens/diary/diary_screen.dart';
import 'package:impludehack/screens/hospital/hospital_screen.dart';
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
        TabController(length: 5, vsync: this, initialIndex: widget.initMenu);
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
        leading: const SizedBox(height: 0),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            customTab(icon: Icons.medication_liquid, text: '우울감 진단'),
            customTab(icon: Icons.chat_outlined, text: '털어놓기'),
            customTab(icon: Icons.person_pin_rounded, text: '나를 찾아서'),
            customTab(icon: Icons.flag, text: '일일 챌린지'),
            customTab(icon: Icons.menu_book_sharp, text: '너를 응원해'),
          ],
        ),
      ),
      body: IndexedStack(
        index: _tabController.index,
        children: [
          Container(),
          const DiaryScreen(),
          Container(), // Replace with your actual screens
          const WeekChallengeScreen(),
          Container(), // Replace with your actual screens
        ],
      ),
    );
  }

  Widget customTab({required IconData icon, required String text}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // 센터 정렬
      children: <Widget>[
        Icon(icon, size: 40), // 아이콘 크기 지정
        const SizedBox(height: 2), // 아이콘과 텍스트 사이 간격
        Text(
          text,
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 20), // 텍스트 스타일 지정
      ],
    );
  }
}
