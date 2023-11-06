import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacktonluna/Test1.dart';

void main() {
  runApp(const Test2());
}

class Test2 extends StatelessWidget {
  const Test2({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 139,
                    ),
                    Text(
                      'PHQ-9 우울증 자가진단',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF3D3D3D),
                        fontSize: 20,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w700,
                        height: 0.03,
                      ),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Text(
                      '이 검사는 임상적 우울증의 증상을 경험하고 있는지 판단하는 데 도움이 될 수 있습니다',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF3D3D3D),
                        fontSize: 10,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w400,
                        height: 0.14,
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      '본 테스트는 의료 진단용 테스트가 아닙니다. \n정확한 기분 장애 진단을 위해서는 전문의와 상담하십시오.',
                      style: TextStyle(
                        color: Color(0xFF3D3D3D),
                        fontSize: 10,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w400,

                      ),
                    ),
                    SizedBox(
                      height: 47,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.to(const Test1());
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0486FF)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            side: BorderSide(width: 0.30, color: Color(0xFF8A8A8A)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Container(
                        width: 352,
                        height: 54,
                        child: Center(
                          child: Text(
                            '테스트 시작',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // 버튼을 눌렀을 때 실행될 기능을 추가하세요
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFEBEBEB)),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            side: BorderSide(width: 0.30, color: Color(0xFF8A8A8A)),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      child: Container(
                        width: 352,
                        height: 54,
                        child: Center(
                          child: Text(
                            '이전 결과',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                            ),
                          ),
                        ),
                      ),
                    )
                  ]
                ),


              ],
            )

          ],
        ),
      ),
    );
  }
}
