import 'package:flutter/material.dart';
import 'package:impludehack/containers/Hospital/hospital_info.dart';

class HospitalScreen extends StatelessWidget {
  const HospitalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 230,
              decoration: BoxDecoration(
                color: const Color(0xff0487FF),
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    color: Colors.black54,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 53),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '병원찾기',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '안산시 단원구 와동',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 1),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Container(
                          width: double.maxFinite,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              SizedBox(width: 15),
                              Icon(
                                Icons.search,
                                size: 30,
                              ),
                              SizedBox(width: 15),
                              SizedBox(
                                width: 400,
                                height: 35,
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ), //TODO not yet!
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '정확도 순',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 2),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: ListView(
                    children: const [
                      HospitalInfo(
                        name: '한길외과의원',
                        rate: '4.5',
                        distance: '867m',
                        address: '경기도 안산시 단원구 황금1길 31',
                        subject: '정신건강의학과',
                      ),
                      HospitalInfo(
                        name: '한국웃음치료본부',
                        rate: '3.0',
                        distance: '920m',
                        address: '경기도 안산시 단원구 화정천동로6길 34',
                        subject: '심리상담',
                      ),
                      HospitalInfo(
                        name: '마음의날씨정신건강의학과의원',
                        rate: '4.0',
                        distance: '1.3km',
                        address: '경기도 안산시 단원구 선부광장1로 82',
                        subject: '정신건강의학과',
                      ),
                      HospitalInfo(
                        name: '소리샘심리상담센터',
                        rate: '3.0',
                        distance: '1.4km',
                        address: '경기도 안산시 단원구 선부로 183',
                        subject: '심리상담',
                      ),
                      HospitalInfo(
                        name: '브릿지상담센터',
                        rate: '3.0',
                        distance: '1.5km',
                        address: '경기도 안산시 단원구 선부로 166',
                        subject: '심리상담',
                      ),
                      HospitalInfo(
                        name: '성모마음아정신건강의학과의원',
                        rate: '4.0',
                        distance: '1.9km',
                        address: '경기도 안산시 단원구 선부관장1로 56',
                        subject: '정신건강의학과',
                      ),
                      HospitalInfo(
                        name: '엘림가족상담센터',
                        rate: '3.0',
                        distance: '1.7km',
                        address: '경기도 안산시 상록구 안산천동로 146',
                        subject: '심리상담',
                      ),
                      HospitalInfo(
                        name: '사랑의병원',
                        rate: '4.1',
                        distance: '2.0km',
                        address: '경기도 안산시 상록구 예술광장로 69',
                        subject: '정신건강의학과',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
