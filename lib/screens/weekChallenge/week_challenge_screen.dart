import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
    ChallengeProv _challengeProv = Provider.of<ChallengeProv>(context);
    return MaterialApp(
      home: Scaffold(
        body: Padding(
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
                    imgUrl: _challengeProv.challenges[0]['imgUrl'],
                    title: _challengeProv.challenges[0]['title'],
                    hashTag: _challengeProv.challenges[0]['hashTag'],
                  ),
                  ChallengeCard(
                    imgUrl: _challengeProv.challenges[2]['imgUrl'],
                    title: _challengeProv.challenges[2]['title'],
                    hashTag: _challengeProv.challenges[2]['hashTag'],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChallengeCard(
                    imgUrl: _challengeProv.challenges[10]['imgUrl'],
                    title: _challengeProv.challenges[10]['title'],
                    hashTag: _challengeProv.challenges[10]['hashTag'],
                  ),
                  ChallengeCard(
                    imgUrl: _challengeProv.challenges[8]['imgUrl'],
                    title: _challengeProv.challenges[8]['title'],
                    hashTag: _challengeProv.challenges[8]['hashTag'],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                '이런 챌린지는 어때요?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        height: 125,
                        child: Row(
                          children: [
                            Container(
                              width: 125,
                              height: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(
                                      _challengeProv.challenges[0]['imgUrl']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _challengeProv.challenges[0]['title'],
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  _challengeProv.challenges[0]['hashTag']
                                      .map((str) => '#$str')
                                      .join(' '),
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        const MaterialStatePropertyAll(
                                            Colors.white),
                                    foregroundColor:
                                        const MaterialStatePropertyAll(
                                            Colors.black),
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    side: const MaterialStatePropertyAll(
                                      BorderSide(
                                          color: Color.fromARGB(
                                              255, 189, 189, 189)),
                                    ),
                                    elevation:
                                        const MaterialStatePropertyAll(0.0),
                                  ),
                                  child: const Row(
                                    children: [
                                      Text('자세히 보기'),
                                      Icon(Icons.chevron_right_outlined),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
