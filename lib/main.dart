import 'package:flutter/material.dart';
import 'package:impludehack/provider/challenge_prov.dart';
import 'package:impludehack/screens/weekChallenge/week_challenge_screen.dart';
import 'package:provider/provider.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // 기본 stateless 위젯 (stateless 위젯은 곧 배울겁니다)
  // stl 치고 탭 치면 이름 빠진채로 기본틀이 잡혀서 나오는데 바로 이름 쳐줍시다

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 처음 runApp에 쓰는 위젯은 MaterialApp을 한번 감싸줍시다
      // 안쓰면 크롬창에서 아래처럼 무서운 빨간색 노란색 오류나요
      home: ChangeNotifierProvider(
        create: ((BuildContext context) => ChallengeProv()),
        child: Home(),
      ),
      // 다른 위젯 하나
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0487FF),
      body: Column(
        children: [
          SizedBox(
            height: 230,
          ),
          Row(
            children: [
              SizedBox(
                width: 72,
              ),
              Image.asset(
                "asset/tear.gif",
                width: 300,
                height: 243,
                fit: BoxFit.cover,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NavigationExample()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff0487FF),
            ),
            child: const Text(
              '울어도 돼 괜찮아, 우리가 들어줄게',
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
