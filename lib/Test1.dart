import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const Test1());
}

class Test1 extends StatelessWidget {
  const Test1({super.key});

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
  int pagecounter = 1;
  int SadnessPoint = 0;

  void NextPage() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      pagecounter++;
      if (pagecounter > 9){
        pagecounter = 9;// 결과 보여주는 창
      }
    });
  }

  String ShowQ(int pagecounter) {
    switch(pagecounter){
      case 1:
        return '일 또는 여가 활동을 하는데 흥미나 \n 즐거움을 느끼지 못한다.';
      case 2:
        return '기분이 가라앉거나, 우울하거나, \n 희망이 없다고 느껴진다.';
      case 3:
        return '잠이 들거나 계속 잠을 자는 것이 어렵다. \n 또는 잠을 너무 많이 잔다.';
      case 4:
        return '피곤하다고 느끼거나 기운이 거의 없다.';
      case 5:
        return '입맛이 없거나 과식을 한다.';
      case 6:
        return '자신을 부정적으로 본다. 혹은 자신이 \n 실패자라고 느끼거나 자신 또는 가족을 \n 실망시킨다.';
      case 7:
        return '신문을 읽거나 텔레비전 보는 것과 같은 \n 일에 집중하는 것이 어렵다.';
      case 8:
        return '다른 사람들이 주목할 정도로 너무 느리게 \n 움직이거나 말을 한다. 또는 이와 반대로 \n 평상시보다 많이 움직여서, 너무 \n 안절부절 못하거나 들떠 있다.';
      case 9:
        return '자신이 죽은 것이 더 낫다고 생각하거나 \n 어떤 식으로든 자신을 해칠 것이라고 생각한다.';
      default:
        return '.';
    }

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF5),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         children:[
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Column(
                 children: [
                   SizedBox(
                     height: 274,
                   ),

                   Text(
                     '지난 2주일 동안 당신은 다음의 문제들로 인하여 얼마나 자주 방해를 받았나요?',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Color(0xFF636363),
                       fontSize: 12,
                       fontFamily: 'SUIT',
                       fontWeight: FontWeight.w500,
                       height: 0.10,
                     ),
                   ),
                   SizedBox (
                     height: 24,
                   ),
                   Text(
                     ShowQ(pagecounter),
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Color(0xFF3D3D3D),
                       fontSize: 20,
                       fontFamily: 'SUIT',
                       fontWeight: FontWeight.w700,
                    ),
                   ),// 질문 텍스트
                   SizedBox(
                     height: 20,
                   ),
                   ElevatedButton(
                     onPressed: () {
                       NextPage();
                     },
                     style: ElevatedButton.styleFrom(
                       primary: Color(0xFFF5F5F5), // 배경색
                       onPrimary: Color(0xFFADADAD), // 테두리 색
                       onSurface: Color(0x3F000000), // 그림자 색
                       elevation: 2, // 그림자 높이
                       shadowColor: Color(0x3F000000), // 그림자 색
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15),
                         side: BorderSide(width: 0.30, color: Color(0xFFADADAD)),
                       ),
                     ),
                     child: Container(
                       width: 366,
                       height: 41,
                       child: Padding(
                         padding: EdgeInsets.only(
                           top: 25,
                         ),
                         child: Text(
                           '전혀 방해 받지 않았다',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             color: Color(0xFF3D3D3D),
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
                     height: 10,
                   ),
                   ElevatedButton(
                     onPressed: () {
                       if (pagecounter >= 9)
                       {}
                       else {
                         SadnessPoint = SadnessPoint + 1;
                       }
                       NextPage();
                     },
                     style: ElevatedButton.styleFrom(
                       primary: Color(0xFFF5F5F5), // 배경색
                       onPrimary: Color(0xFFADADAD), // 테두리 색
                       onSurface: Color(0x3F000000), // 그림자 색
                       elevation: 2, // 그림자 높이
                       shadowColor: Color(0x3F000000), // 그림자 색
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15),
                         side: BorderSide(width: 0.30, color: Color(0xFFADADAD)),
                       ),
                     ),
                     child: Container(
                       width: 366,
                       height: 41,
                       child: Padding(
                         padding: EdgeInsets.only(
                           top: 25,
                         ),
                         child: Text(
                           '며칠동안 방해 받았다',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             color: Color(0xFF3D3D3D),
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
                     height: 10,
                   ),
                   ElevatedButton(
                     onPressed: () {
                       if (pagecounter >= 9)
                       {}
                       else {
                         SadnessPoint = SadnessPoint + 2;
                       }
                       NextPage();
                     },
                     style: ElevatedButton.styleFrom(
                       primary: Color(0xFFF5F5F5), // 배경색
                       onPrimary: Color(0xFFADADAD), // 테두리 색
                       onSurface: Color(0x3F000000), // 그림자 색
                       elevation: 2, // 그림자 높이
                       shadowColor: Color(0x3F000000), // 그림자 색
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15),
                         side: BorderSide(width: 0.30, color: Color(0xFFADADAD)),
                       ),
                     ),
                     child: Container(
                       width: 366,
                       height: 41,
                       child: Padding(
                         padding: EdgeInsets.only(
                           top: 25,
                         ),
                         child: Text(
                           '7일 이상 방해 받았다',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             color: Color(0xFF3D3D3D),
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
                     height: 10,
                   ),
                   ElevatedButton(
                     onPressed: () {
                       if (pagecounter >= 9)
                       {}
                       else {
                         SadnessPoint = SadnessPoint + 3;
                       }
                      NextPage();
                     },
                     style: ElevatedButton.styleFrom(
                       primary: Color(0xFFF5F5F5), // 배경색
                       onPrimary: Color(0xFFADADAD), // 테두리 색
                       onSurface: Color(0x3F000000), // 그림자 색
                       elevation: 2, // 그림자 높이
                       shadowColor: Color(0x3F000000), // 그림자 색
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15),
                         side: BorderSide(width: 0.30, color: Color(0xFFADADAD)),
                       ),
                     ),
                     child: Container(
                       width: 366,
                       height: 41,
                       child: Padding(
                         padding: EdgeInsets.only(
                           top: 25,
                         ),
                         child: Text(
                           '거의 매일 방해 받았다',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             color: Color(0xFF3D3D3D),
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
                     height: 132,
                   ),

                   Text(
                     '$pagecounter/9',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Color(0xFF3D3D3D),
                       fontSize: 13,
                       fontFamily: 'SUIT',
                       fontWeight: FontWeight.w300,
                       height: 0.08,
                     ),
                   ),
                   Text(
                     '$SadnessPoint'
                   )


                 ],
               )
             ],
           )
          ],
        ),
       ),

    );
  }
}
