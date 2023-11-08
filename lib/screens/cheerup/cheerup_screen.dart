import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impludehack/containers/Hospital/hospital_info.dart';
import 'package:impludehack/provider/challenge_prov.dart';
import 'package:impludehack/screens/calender/Calender1.dart';
import 'package:impludehack/screens/calender/Calender2.dart';
import 'package:impludehack/screens/diary/diary_screen.dart';
import 'package:impludehack/screens/findme/findme_screen.dart';
import 'package:impludehack/screens/hospital/hospital_screen.dart';
import 'package:impludehack/screens/weekChallenge/week_Challenge_screen.dart';
import 'package:impludehack/screens/weekChallenge/week_challenge_shop_screen.dart';
import 'package:provider/provider.dart';

class LikeButtonDemo extends StatefulWidget {
  @override
  _LikeButtonDemoState createState() => _LikeButtonDemoState();
}

class _LikeButtonDemoState extends State<LikeButtonDemo> {
  int likeCount = 0;
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      if (isLiked) {
        likeCount--;
        isLiked = false;
      } else {
        likeCount++;
        isLiked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('윤서UM님의 글'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "새로운 시작, 새로운 희망 하루의 끝에 지쳐서 누워 있는 그 순간, 당신은 이미 내일을 위한 힘을 얻었습니다. 지친 몸과 마음은 휴식을 통해 회복하고, 더 강해질 준비를 합니다. 모든 날이 새로운 시작이며, 새로운 기회를 의미합니다.힘들게 느껴지는 날은 자주 있습니다. 하지만 그런 날이 있기 때문에 더 나은 날을 더 가치 있게 여길 수 있습니다. 어떤 날은 도전적일지라도, 당신은 그 도전을 극복할 능력을 가지고 있습니다. 내일은 새로운 기회를 가져다 줄 것이며, 그 기회를 활용하여 자신을 더 발전시킬 수 있습니다.지금은 힘들어 보일지 모르지만, 우리는 자주 우리 자신을 과소평가하는 법이 있습니다. 어떤 어려움이든, 당신은 그것을 극복할 수 있으며, 더 나은 미래를 향해 나아갈 수 있습니다. 지쳤다고 느낄 때, 한숨을 돌리고 내일을 기대하며 새로운 희망을 품어봅시다.끊임없이 자신을 믿고, 고난을 극복하며 성장하는 과정을 통해, 우리는 자신을 더 크게 발전시키고 더 나은 인생을 살아갈 것입니다. 마음의 힘은 우리가 믿을 때 무한한 가능성을 열어줍니다. 기운을 내고, 힘을 모으고, 내일의 일에 대한 희망을 가져봅시다. 당신은 더 강하고, 더 행복한 내일을 위해 준비되어 있습니다.",
              ),
              IconButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : Colors.grey,
                ),
                onPressed: toggleLike,
              ),
              Text(
                '$likeCount 좋아요',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
