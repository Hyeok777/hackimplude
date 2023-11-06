import 'package:flutter/material.dart';
import 'package:impludehack/provider/challenge_prov.dart';
import 'package:provider/provider.dart';

class ChallengeBar extends StatelessWidget {
  final int id;

  const ChallengeBar({
    super.key,
    required this.id,
  });

  static void challengeDialog(BuildContext context, int id) {
    final challengeProv = Provider.of<ChallengeProv>(context, listen: false);
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: [
            SizedBox(
              width: double.maxFinite,
              height: 700,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          backgroundColor: Colors.white,
                          elevation: 0,
                          child: const Icon(
                            Icons.close,
                            size: 40,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                              challengeProv.challenges[id]['imgUrl']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      challengeProv.challenges[id]['title'],
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          challengeProv.challenges[id]['detail'],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          challengeProv.challenges[id]['hashTag']
                              .map((str) => '#$str')
                              .join(' '),
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 200,
                      height: 75,
                      child: ElevatedButton(
                        onPressed: () {
                          challengeProv.setChallenges(
                              id, 'isChallenging', true);
                          Navigator.of(context).pop();
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            challengeProv.challenges[id]['isChallenging']
                                ? Colors.white
                                : const Color(0xff0487ff),
                          ),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60),
                            ),
                          ),
                          side: const MaterialStatePropertyAll(
                            BorderSide(
                                color: Color.fromARGB(255, 189, 189, 189)),
                          ),
                          elevation: const MaterialStatePropertyAll(0.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              challengeProv.challenges[id]['isChallenging']
                                  ? challengeProv.challenges[id]['isSucceed']
                                      ? '도전 완료!'
                                      : '도전 중!'
                                  : '도전하기',
                              style: TextStyle(
                                color: challengeProv.challenges[id]
                                        ['isChallenging']
                                    ? const Color(0xff0487ff)
                                    : Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final challengeProv = Provider.of<ChallengeProv>(context);
    return SizedBox(
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
                image: AssetImage(challengeProv.challenges[id]['imgUrl']),
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
                challengeProv.challenges[id]['title'],
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                challengeProv.challenges[id]['hashTag']
                    .map((str) => '#$str')
                    .join(' '),
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 4),
              ElevatedButton(
                onPressed: () {
                  challengeDialog(context, id);
                },
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  foregroundColor: const MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  side: const MaterialStatePropertyAll(
                    BorderSide(color: Color.fromARGB(255, 189, 189, 189)),
                  ),
                  elevation: const MaterialStatePropertyAll(0.0),
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
          const Spacer(),
          if (challengeProv.challenges[id]['isChallenging'])
            Icon(
              (challengeProv.challenges[id]['isSucceed'])
                  ? Icons.workspace_premium_outlined
                  : Icons.run_circle_outlined,
              size: 50,
            ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
