import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impludehack/containers/weekChallenge/challenge_bar.dart';
import 'package:impludehack/containers/weekChallenge/challenge_card.dart';

import 'package:provider/provider.dart';
import '../../provider/challenge_prov.dart';

class WeekChallengeScreen extends StatefulWidget {
  WeekChallengeScreen({super.key});
  @override
  State<WeekChallengeScreen> createState() => _WeekChallengeScreenState();
}

class _WeekChallengeScreenState extends State<WeekChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    ChallengeProv challengeProv = Provider.of<ChallengeProv>(context);
    List<ChallengeBar> challengeBars = challengeProv.challenges
        .map((challenge) => ChallengeBar(
              id: challenge['id'],
            ))
        .toList();
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
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
                    ChallengeCard(
                      id: 4,
                    ),
                    ChallengeCard(
                      id: 3,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChallengeCard(
                      id: 9,
                    ),
                    ChallengeCard(
                      id: 7,
                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
