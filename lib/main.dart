import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impludehack/containers/Hospital/hospital_info.dart';
import 'package:impludehack/provider/challenge_prov.dart';
import 'package:impludehack/screens/findme/findme_screen.dart';
import 'package:impludehack/screens/hospital/hospital_screen.dart';
import 'package:impludehack/screens/weekChallenge/week_Challenge_screen.dart';
import 'package:impludehack/screens/weekChallenge/week_challenge_shop_screen.dart';
import 'package:provider/provider.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ChallengeProv(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
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
