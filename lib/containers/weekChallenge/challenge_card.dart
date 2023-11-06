import 'package:flutter/material.dart';
import 'package:impludehack/provider/challenge_prov.dart';
import 'package:provider/provider.dart';
import 'challenge_bar.dart';

class ChallengeCard extends StatelessWidget {
  final int id;

  const ChallengeCard({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final challengeProv = Provider.of<ChallengeProv>(context, listen: false);
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(challengeProv.challenges[id]['imgUrl']),
          fit: BoxFit.cover,
        ),
      ),
      child: TextButton(
        onPressed: () {
          ChallengeBar.challengeDialog(context, id);
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.maxFinite,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      challengeProv.challenges[id]['title'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      challengeProv.challenges[id]['hashTag']
                          .map((str) => '#$str')
                          .join(' '),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
