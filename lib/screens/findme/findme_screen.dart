import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impludehack/containers/weekChallenge/challenge_todo.dart';
import 'package:impludehack/provider/challenge_prov.dart';
import 'package:impludehack/screens/weekChallenge/week_challenge_shop_screen.dart';
import 'package:provider/provider.dart';

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
    return Container(
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
    );
  }
}

class plus extends StatelessWidget {
  final String ddd;

  plus(this.ddd);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 83, // 원하는 너비 설정
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
