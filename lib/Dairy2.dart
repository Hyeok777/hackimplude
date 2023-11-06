import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:hacktonluna/Dairy.dart';

void main() {
  runApp(const Dairy2());
}

class Dairy2 extends StatelessWidget {
  const Dairy2({super.key});

  // This widget is the root of your application.
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
        padding: EdgeInsets.symmetric(horizontal: 100),
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
                   // height: 0.03,
                    letterSpacing: -0.50,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'OCTOBER',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0486FF),
                    fontSize: 24,
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w700,
                  //  height: 0.02,
                    letterSpacing: -0.50,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  '11 ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6C6C6C),
                    fontSize: 24,
                    fontFamily: 'SUIT',
                    fontWeight: FontWeight.w700,
                   // height: 0.02,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                  Container(
                  width: 30,
                  height: 30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFD130),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1.18,
                        top: 8.18,
                        child: Container(
                          width: 27.64,
                          height: 1.81,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/28x2"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.27,
                        top: 19.46,
                        child: Container(
                          width: 1.62,
                          height: 4.05,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/30x30"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: ShapeDecoration(
                                color: Color(0xFF64C4FF),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 1.41,
                            top: 7.61,
                            child: Container(
                              width: 27.15,
                              height: 1.81,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/27x2"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 4.05,
                            top: 11.35,
                            child: Container(
                              width: 18.65,
                              height: 7.30,
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/30x30"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
