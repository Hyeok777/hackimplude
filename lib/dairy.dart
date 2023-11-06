import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacktonluna/Dairy2.dart';

void main() {
  runApp(const Dairy());
}

class Dairy extends StatelessWidget {
  const Dairy({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'flutter Demo Home Page'),
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
                  children: [
                    SizedBox(
                      height: 67,
                    ),
                    Text(
                      '2023',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFACACAC),
                        fontSize: 20,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w700,
                        height: 0.03,
                        letterSpacing: -0.50,
                      ),
                    ),

                    SizedBox(
                      height: 94,
                    ),
                    Text(
                      'OCTOBER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0486FF),
                        fontSize: 32,
                        fontFamily: 'SUIT',
                        fontWeight: FontWeight.w700,
                        height: 0.01,
                        letterSpacing: -0.50,
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Row( // Sun~Sat 텍스트
                      children: [
                        Text(
                          'Sun',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3D3D3D),
                            fontSize: 15,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Mon',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3D3D3D),
                            fontSize: 15,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Tue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3D3D3D),
                            fontSize: 15,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Wed',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3D3D3D),
                            fontSize: 15,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Thu',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3D3D3D),
                            fontSize: 15,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Fri',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3D3D3D),
                            fontSize: 15,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Sat',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF3D3D3D),
                            fontSize: 15,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Get.to(const Dairy2());
                            },
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: EdgeInsets.zero,
                              backgroundColor: const Color(0xFFE0E0E0),
                              side: const BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                            child: SizedBox(
                              width: 34,
                              height: 34,
                            ),
                          ),

                          SizedBox(
                            width: 13,
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFD130),
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 1.50,
                                  top: 10.20,
                                  child: Container(
                                    width: 34,
                                    height: 2,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://via.placeholder.com/34x2"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 25,
                                  top: 24,
                                  child: Container(
                                    width: 2,
                                    height: 5,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: OvalBorder(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ), // 2일
                          SizedBox(
                            width: 13,
                          ),
                          Container( // 3일
                            width: 34,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE0E0E0),
                              shape: OvalBorder(
                                side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                              ),
                            ),
                          ), // 3일
                          SizedBox(
                            width: 13,
                          ),
                          Container(
                            width: 34,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE0E0E0),
                              shape: OvalBorder(
                                side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                              ),
                            ),
                          ), // 4일
                          SizedBox(
                            width: 13,
                          ),
                          Container(
                            width: 34,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE0E0E0),
                              shape: OvalBorder(
                                side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                              ),
                            ),
                          ), // 5일
                          SizedBox(
                            width: 13,
                          ),
                          Container( // 6일
                            width: 34,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE0E0E0),
                              shape: OvalBorder(
                                side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Container( // 7일
                            width: 34,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE0E0E0),
                              shape: OvalBorder(
                                side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                              ),
                            ),
                          ),
                        ],
                    ), // 1주차
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container( // 8일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 9일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 10일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(const Dairy2());
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: EdgeInsets.zero,
                            backgroundColor: const Color(0xFFE0E0E0),
                            side: const BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                          ),
                          child: SizedBox(
                            width: 34,
                            height: 34,
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 12일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 13일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 14일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                      ],
                    ), // 2주차
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container( // 15일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 16일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 17일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 18일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 19일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 20일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 21일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                      ],
                    ), // 3주차
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container( // 22일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 23일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 24일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 25일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 26일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 27일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 28일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                      ],
                    ), // 4주차
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container( // 29일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 30일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container( // 31일
                          width: 34,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE0E0E0),
                            shape: OvalBorder(
                              side: BorderSide(width: 0.20, color: Color(0xFF3D3D3D)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 187,
                        ),
                      ],
                    ), // 5주차
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),


              ],
            )
          ],

      ),

      )
    );
  }
}
