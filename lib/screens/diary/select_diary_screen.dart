import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectDiaryScreen extends StatefulWidget {
  const SelectDiaryScreen({Key? key}) : super(key: key); // 이 부분을 수정

  @override
  State<SelectDiaryScreen> createState() => _SelectDiaryScreenState();
}

class _SelectDiaryScreenState extends State<SelectDiaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Diary")),
      // ... 기타 위젯 구성
    );
  }
}
