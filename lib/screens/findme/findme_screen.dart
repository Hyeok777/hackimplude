import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impludehack/containers/weekChallenge/challenge_todo.dart';
import 'package:impludehack/provider/challenge_prov.dart';
import 'package:impludehack/screens/depressionTest/Test1.dart';
import 'package:impludehack/screens/weekChallenge/week_challenge_screen.dart';
import 'package:impludehack/screens/weekChallenge/week_challenge_shop_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class BoxColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                7,
                0,
                7,
                0,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 12), // 초기 간격을 설정
                  BoxWidget('최근 도전해보고 싶은 일은?'),
                  SizedBox(height: 12),
                  BoxWidget('나의 소울푸드는?'),
                  SizedBox(height: 12),
                  BoxWidget('내가 가장 소중히 여기는 것이 있다면'),
                  SizedBox(height: 12),
                  BoxWidget('최근 열심히 하고있는 취미활동은?'),
                  SizedBox(height: 12),
                  BoxWidget('나의 고향에 가장 기억에 남는 추억'),
                  SizedBox(height: 12),
                  BoxWidget('가장 좋았던 하루'),
                  SizedBox(height: 12),
                  BoxWidget('내가 가장 소중히 여기는 것이 있다면'),
                  SizedBox(height: 12),
                  plus('+'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  final String alphabet;

  BoxWidget(this.alphabet);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 332, // 원하는 너비 설정
        height: 73, // 원하는 높이 설정
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: Center(
          child: Text(
            alphabet,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (c) => writen(alphabet)));
      },
    );
  }
}

class plus extends StatelessWidget {
  final String ddd;

  plus(this.ddd);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370, // 원하는 너비 설정
      height: 73, // 원하는 높이 설정
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.grey[200],
      ),
      child: Center(
        child: Text(
          ddd,
          style: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class writen extends StatelessWidget {
  final String alphabet;

  writen(this.alphabet);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellow[100],
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => BoxColumn()),
                      );
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  width: 300,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BoxColumn()),
                      );
                    },
                    icon: Icon(Icons.close_rounded)),
              ],
            ),
            Text(
              '질문에 답변하고 나를 찾아가세요',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              alphabet,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
