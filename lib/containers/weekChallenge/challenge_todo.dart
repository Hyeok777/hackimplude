import 'package:flutter/material.dart';
import 'package:impludehack/containers/weekChallenge/challenge_bar.dart';
import 'package:impludehack/provider/challenge_prov.dart';
import 'package:provider/provider.dart';

class ChallengeTodo extends StatelessWidget {
  final int id;

  const ChallengeTodo({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final challengeProv = Provider.of<ChallengeProv>(context);
    return SizedBox(
      child: Row(
        children: [
          FloatingActionButton(
            heroTag: "setChallengeSucceed$id",
            onPressed: () {
              challengeProv.setChallenges(
                  id, 'isSucceed', !challengeProv.challenges[id]['isSucceed']);
            },
            backgroundColor: Colors.grey[200],
            elevation: 0,
            child: Icon(
              challengeProv.challenges[id]['isSucceed']
                  ? Icons.check_box
                  : Icons.check_box_outline_blank,
              size: 35,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {
              ChallengeBar.challengeDialog(context, id);
            },
            child: Text(
              challengeProv.challenges[id]['title'],
              style: TextStyle(
                  fontSize: 25,
                  color: challengeProv.challenges[id]['isSucceed']
                      ? Colors.grey[600]
                      : Colors.black,
                  decoration: challengeProv.challenges[id]['isSucceed']
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ),
          const Spacer(),
          FloatingActionButton(
            heroTag: "removeChallenge$id",
            onPressed: () {
              challengeProv.setChallenges(id, 'isChallenging', false);
              challengeProv.setChallenges(id, 'isSucceed', false);
            },
            backgroundColor: Colors.grey[200],
            elevation: 0,
            child: Icon(
              Icons.cancel,
              size: 35,
              color: Colors.red[600],
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}
