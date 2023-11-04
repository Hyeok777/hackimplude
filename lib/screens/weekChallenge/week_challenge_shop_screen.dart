import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impludehack/containers/weekChallenge/challenge_bar.dart';
import 'package:impludehack/containers/weekChallenge/challenge_card.dart';
import 'package:impludehack/screens/weekChallenge/week_Challenge_screen.dart';

import 'package:provider/provider.dart';
import '../../provider/challenge_prov.dart';

class WeekChallengeShopScreen extends StatefulWidget {
  WeekChallengeShopScreen({super.key});
  @override
  State<WeekChallengeShopScreen> createState() => _WeekChallengeShopScreen();
}

class _WeekChallengeShopScreen extends State<WeekChallengeShopScreen> {
  @override
  Widget build(BuildContext context) {
    var challengeProv = context.watch<ChallengeProv>();
    List<ChallengeBar> challengeBars = challengeProv.challenges
        .map((challenge) => ChallengeBar(
              id: challenge['id'],
            ))
        .toList();
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          '오늘의 추천 챌린지',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChallengeCard(id: 4),
                        ChallengeCard(id: 3),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ChallengeCard(id: 9),
                        ChallengeCard(id: 12),
                      ],
                    ),
                    const SizedBox(height: 100),
                    const Text(
                      '이런 챌린지는 어때요?',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: List.generate(
                        challengeBars.length * 2 - 1,
                        (index) {
                          if (index.isEven) {
                            return challengeBars[index ~/ 2];
                          } else {
                            return const SizedBox(height: 10);
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 13.0, vertical: 10.0),
                child: SizedBox(
                  height: 75,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => WeekChallengeScreen());
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xff0487ff)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      elevation: const MaterialStatePropertyAll(0.0),
                    ),
                    child: const Text(
                      '내 활동으로 돌아가기',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
