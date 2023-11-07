import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impludehack/containers/weekChallenge/challenge_todo.dart';
import 'package:impludehack/provider/challenge_prov.dart';
import 'package:impludehack/screens/weekChallenge/week_challenge_shop_screen.dart';
import 'package:provider/provider.dart';

class WeekChallengeScreen extends StatefulWidget {
  const WeekChallengeScreen({super.key});

  @override
  State<WeekChallengeScreen> createState() => _WeekChallengeScreenState();
}

class _WeekChallengeScreenState extends State<WeekChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    var challengeProv = context.watch<ChallengeProv>();
    List<ChallengeTodo> challengeTodos = challengeProv.challenges
        .where((challenge) => challenge['isChallenging'])
        .map((challenge) => ChallengeTodo(
              id: challenge['id'],
            ))
        .toList();
    List<ChallengeTodo> succeedChallengeTodos = challengeProv.challenges
        .where((challenge) => challenge['isChallenging'])
        .where((challenge) => challenge['isSucceed'])
        .map((challenge) => ChallengeTodo(
              id: challenge['id'],
            ))
        .toList();
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    challengeTodos.isEmpty
                        ? '아직 활동이 없네요...'
                        : '${(succeedChallengeTodos.length / challengeTodos.length * 100).toInt()}% 성공',
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '${challengeTodos.length}개 활동 중 ${succeedChallengeTodos.length}개 성공',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 450,
                    height: 700,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      child: Column(
                        children: [
                          if (challengeTodos.isEmpty)
                            const Center(
                              child: Text(
                                '아직 활동이 없네요!\n아래 \'활동 찾기\'에서 도전할 활동을 탐색해보세요!',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          else
                            ...challengeTodos,
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                ],
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
                      Get.to(() => const WeekChallengeShopScreen());
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
                      '활동 찾기',
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
