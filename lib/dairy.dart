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
                          width: 29,
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
                          width: 26,
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
                          width: 30,
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
                          width: 28,
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
                          width: 36,
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
                          width: 36,
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
                          ), // 1일


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
                          ), // 2일

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
                          ),// 3일

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
                          ), // 4일

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
                          ), // 5일

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
                          ), // 6일

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
                          ), // 7일
                        ],
                    ), // 1주차
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
                        ), // 8일


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
                        ), // 9일

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
                        ),// 10일

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
                        ), // 11일

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
                        ), // 12일

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
                        ), // 13일

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
                        ), // 14일
                      ],
                    ), // 2주차
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
                        ), // 15일


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
                        ), // 16일

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
                        ),// 17일

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
                        ), // 18일

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
                        ), // 19일

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
                        ), // 20일

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
                        ), // 21일
                      ],
                    ), // 3주차
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
                        ), // 22일


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
                        ), // 23일

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
                        ),// 24일

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
                        ), // 25일

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
                        ), // 26일

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
                        ), // 27일

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
                        ), // 28일
                      ],
                    ), // 4주차
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
                        ), // 29일

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
                        ), // 30일
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
                        ), // 31일
                        SizedBox(
                          width: 224,
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
