import 'package:flutter/material.dart';

class ChallengeProv with ChangeNotifier {
  final List<Map<String, dynamic>> _challenges = [
    {
      'id': 1,
      'imgUrl': 'asset/images/weekChallenge/cardImg1.jpg',
      'title': '아침 7시 기상',
      'hashTag': ['실내', '습관', '자기계발'],
      'detail':
          '하루를 길게 사용하고 싶다면 아침 일찍 일어나는 습관을 들여보세요. 일찍 일어나면 생산성이 향상되고, 하루를 더 활기차게 시작할 수 있습니다.'
    },
    {
      'id': 2,
      'imgUrl': 'asset/images/weekChallenge/cardImg2.jpg',
      'title': '책상 정리하기',
      'hashTag': ['실내', '환경', '기분전환'],
      'detail':
          '정돈된 공간은 마음을 진정시키는 효과가 있습니다. 오늘은 책상을 정리하면서 일의 효율을 높이고 마음의 여유를 가져보세요.'
    },
    {
      'id': 3,
      'imgUrl': 'asset/images/weekChallenge/cardImg3.jpg',
      'title': '공원 산책하기',
      'hashTag': ['실외', '운동', '기분전환'],
      'detail':
          '자연 속에서 신선한 공기를 마시며 산책하는 것은 마음을 안정시키고 스트레스를 감소시킵니다. 햇볕을 쬐며 비타민 D도 충전하세요.'
    },
    {
      'id': 4,
      'imgUrl': 'asset/images/weekChallenge/cardImg4.jpg',
      'title': '요리 레시피 도전하기',
      'hashTag': ['실내', '취미', '자기계발'],
      'detail':
          '새로운 요리에 도전하여 요리 능력을 향상시키고, 직접 만든 건강한 식사를 즐겨보세요. 요리는 창의력을 발휘할 수 있는 멋진 활동입니다.'
    },
    {
      'id': 5,
      'imgUrl': 'asset/images/weekChallenge/cardImg5.jpg',
      'title': '5분 명상하기',
      'hashTag': ['실내', '습관', '기분전환'],
      'detail':
          '명상은 마음을 진정시키고 집중력을 향상시키는 데 도움이 됩니다. 하루에 단 10분만 투자하여 스트레스를 관리하고 평화로운 마음을 경험해보세요.'
    },
    {
      'id': 6,
      'imgUrl': 'asset/images/weekChallenge/cardImg6.jpg',
      'title': '3줄 일기 쓰기',
      'hashTag': ['실내', '습관', '자기계발'],
      'detail':
          '하루를 마감하며 감사했던 순간들을 일기에 적어보세요. 긍정적인 사고를 키우고 자아 성찰의 시간을 가질 수 있습니다.'
    },
    {
      'id': 7,
      'imgUrl': 'asset/images/weekChallenge/cardImg7.jpg',
      'title': '오랜 친구에게 연락하기',
      'hashTag': ['실내', '습관', '기분전환'],
      'detail': '잠시 시간을 내어 오랜 친구에게 메시지를 보내는건 어떨까요?.'
    },
    {
      'id': 8,
      'imgUrl': 'asset/images/weekChallenge/cardImg8.jpg',
      'title': '내 방에 작은 화분 두기',
      'hashTag': ['실내', '환경', '기분전환'],
      'detail': '식물을 기르는 것은 책임감을 키우고 일상에 생명력을 더합니다. 작은 화분 하나로도 방의 분위기를 바꿔보세요.'
    },
    {
      'id': 9,
      'imgUrl': 'asset/images/weekChallenge/cardImg9.jpg',
      'title': '아침에 스트레칭하기',
      'hashTag': ['실내', '운동', '자기계발'],
      'detail': '아침에 간단한 스트레칭으로 하루를 시작해보세요. 근육을 풀고 하루를 기분좋게 시작하는 데 도움이 됩니다.'
    },
    {
      'id': 10,
      'imgUrl': 'asset/images/weekChallenge/cardImg10.jpg',
      'title': '소설 읽기',
      'hashTag': ['실내', '취미', '기분전환'],
      'detail':
          '편안한 장소에서 좋아하는 소설 한 권을 읽으며 몰입의 시간을 가져보세요. 이야기 속 세계에 빠져들면서 일상의 스트레스에서 벗어나 보세요.'
    },
    {
      'id': 11,
      'imgUrl': 'asset/images/weekChallenge/cardImg11.jpg',
      'title': '오래된 물건 정리하기',
      'hashTag': ['실내', '환경', '기타'],
      'detail': '평소 필요 없는 물건을 정리해보세요. 남에게 기부하거나 선물로 주는 것도 좋습니다.'
    },
    {
      'id': 12,
      'imgUrl': 'asset/images/weekChallenge/cardImg12.jpg',
      'title': '재활용 프로젝트 시작하기',
      'hashTag': ['실내', '환경', '기분전환'],
      'detail':
          '집에 있는 물건들을 재활용하여 새로운 물건을 만들어보세요. 환경을 생각하며 창의력을 발휘할 수 있는 좋은 방법입니다.'
    },
    {
      'id': 13,
      'imgUrl': 'asset/images/weekChallenge/cardImg13.jpg',
      'title': '집에서 허브 키우기',
      'hashTag': ['실내', '취미', '자기계발'],
      'detail':
          '허브를 키우는 것은 취미 생활을 통해 일상에 생기를 더할 수 있습니다. 또한, 허브의 향긋한 냄새는 기분을 상쾌하게 만들어줄 것입니다.'
    },
    {
      'id': 14,
      'imgUrl': 'asset/images/weekChallenge/cardImg14.jpg',
      'title': '4컷 만화 그리기',
      'hashTag': ['실내', '취미', '기분전환'],
      'detail':
          '만화 그리기는 마음을 편안하게 하고 창의력을 높일 수 있는 활동입니다. 예술적인 활동은 감정을 표현하고 스트레스를 완화하는 데 도움이 됩니다.'
    },
    {
      'id': 15,
      'imgUrl': 'asset/images/weekChallenge/cardImg15.jpg',
      'title': '주말 자전거 여행',
      'hashTag': ['실외', '운동', '기분전환'],
      'detail':
          '자전거를 타고 가까운 곳을 여행해보세요. 신체 활동은 엔돌핀을 분비시켜 기분을 좋게 하며, 새로운 환경은 정신적으로도 상쾌함을 줍니다.'
    },
  ];

  List<Map<String, dynamic>> get challenges => _challenges;
}
