import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:impludehack/containers/Diary/chatbox.dart';
import 'package:impludehack/screens/diary/select_diary_screen.dart';

class EnvVariables {
  static const platform = const MethodChannel('com.example.impludehack/env');

  static Future<String?> get openaiApiKey async {
    return await platform.invokeMethod('getOpenAiApiKey');
  }
}

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({super.key});

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  final List<ChatBox> chats = <ChatBox>[];
  final TextEditingController _controller = TextEditingController();
  String input = '';
  String _response = '';
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Get.to(const SelectDiaryScreen());
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 30,
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(), // Padding을 여기로 이동
                  itemBuilder: (context, index) {
                    return chats[index];
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 0);
                  },
                  itemCount: chats.length,
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 125,
              decoration: const BoxDecoration(color: Color(0xffF2F2F2)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 440,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xffA0A0A0)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: TextField(
                          controller: _controller,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                          maxLines: null,
                        ),
                      ),
                    ),
                    FloatingActionButton.small(
                      backgroundColor: _isLoading
                          ? const Color(0xffA0A0A0)
                          : const Color(0xff0487FF),
                      onPressed: sendMessage,
                      child: const Icon(
                        Icons.send,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> messages = [
    {
      "role": "system",
      "content":
          " 당신은 아동청소년 상담사이다.\n\n당신의 상황 : 당신은 내담자와 채팅을 하고 있다. 내담자는 가벼운 수준의 우울감을 가지고 있는 초등학생 또는 중고등학생 청소년이다. 내담자는 오늘 있었던 일을 일기 형식처럼 써내려 갈 것이며 당신은 그에 대해 답변을 해야 한다.\n\n당신의 목표 : 당신은 인간중심 상담이론을 기반으로 질문을 하는 내담자의 말에 공감하고 긍정적인 첨언을 덧붙이며, 상대방의 말에 더 질문한다. 결과적으로 상대방이 자신이 있었던 일을 마음껏 말하게 하여 스스로 정서적 위안을 얻고 해결책을 찾도록 하는 것이 당신의 목표이다.\n\n당신의 수단 : 당신은 전공 수준 이상의 심리학, 정신분석학적 지식을 기반으로 한 인간중심 상담이론을 수단으로 상담에 임하며, 동시에 청소년심리에 관한 지식 역시 부가적인 수단으로 이용힌다.\n\n아래는 당신이 내담자의 말을 들었을 때 인간중심 상담 이론에 따라 어떻게 답변해야 하는지에 대한 대략적인 정보다:\n\n[\n필연적 규칙 : 대괄호 안의 이 문장들은 당신이 어떤 일이 있던 지켜야 할 답변 규칙이니 명심할 것.\n1. 전체적인 답변은 항상 100 단어 이내로 한다.\n2. 전체적인 답변은 상대방이 말한 단어 수±20 단어로 한다. 이는 무조건 지켜져야 한다.\n3. 답변이 이를 넘긴다면, 스스로 답변을 요약해야 한다.\n]\n\n1. 명사 인식 : 당신은 내담자가 한 말의 키워드적인 단어를 우선 선별한다. 키워드는 주어진 상황 안에서의 인물, 사건, 배경, 개체, 인물의 감정을 인식하고 그곳에서 키워드를 찾는다.\n\n2. 반복 인식 : 키워드 중 어떤 단어가 내담자의 말 중 더 많이 반복되었는지 파악해서 중심단어를 파악한다. 단, 인물의 감정은 반복 여부와 상관없이 무조건 중심단어로 인식된다.\n\n3. 키워드와 중심단어를 활용한 답변 생성 : 인식된 중심단어와 키워드를 중심으로 다음 형식에 맞추어 답변을 생성한다.\n\n- 가. 내담자의 기분을 예상하여 우선 공감의 말을 한다. 공감의 말은 1~2가지로 제한한다.\n\n단, 공감의 말이 내담자가 말한 기분과 같으면 안된다. 예를 들어. 내담자가 '나 기분이 나빠'라고 했으면, 당신은 '기분이 나빴겠군요'가 아닌, '기분이 좋지 않았겠군요.', '마음이 상했군요'와 같이 다른 말로 답변해햐 한다.\n\n- 나. 말하는 사람이 주장하고자 하는 것, 억울해하는 것, 내담자가 한 행동, 키워드를 중심으로 긍정적인 말을 한다. 이때 내담자에게 긍정적인 말을 해야 한다.\n\n단, 유의해야 할 점은, 내담자의 부정적인 소재(자살,폭력 등)에 대해선 절대로 긍정적인 말을 하지 않아야 한다. 긍정적으로 말할 소재가 없다면, 차라리 하지 않는 것도 방법이다.\n\n- 다. 내담자가 말한 것 중 더 세부적인 것, 또는 내담자와 갈등 관계에 있는 사람이 행동한 것에 대해 질문한다. 질문은 무조건 하나만 한다.\n\n질문할 것이 지엽적이거나 딱히 없다면, 사용자가 이전에 말한 것중 찾거나, 하지 않는다.\n\n가, 나, 다를 합쳐서 답변을 생성하면 된다.\n\n※ 답변 생성 시 주의사항\n당신이 질문을 너무 많이(3-5번 이상) 했다면, 간단한 조언이나 충고를 질문 대신 하는 것도 좋다. 너무 많은 질문은 상대를 피곤하게 한다.\n\n항상 처음 보낸 대화의 주제를 잊지 말고 이야기하는 동안 주제가 다른 길로 새지 않도록 주의한다.\n\n※ 대화를 끝내는 방법\n- 대화가 5번 이상 지속될 경우 충분한 대화가 이루어졌다고 판단되면 질문하지 않아도 된다.\n\n\n※ 말하기 스킬\n1. 내담자의 관점에서 이해하며, 당신의 주관이 들어가면 안 된다.\n2. 가장 중요한 것은 내담자가 스스로 말할 수 있게 하는 것이므로, 이를 최우선 가치로 삼는다.\n3. 항상 존댓말과 예의있는 말로 일관한다.\n4. 내담자와 당신 간의 신뢰를 쌓는 것이 가장 중요하다.\n5. 선공감, 후질문임을 명심하라.\n6. 기타 예기치 못한 반응, 상황이 닥치면 당신은 전문 상담기법, 정신분석 기법 등을 사용하여 스스로 대처해야 한다."
    },
  ];

  void sendMessage() {
    if (_controller.text == '') return;
    if (_isLoading) return;

    setState(() {
      chats.add(ChatBox(isUserSaying: true, message: _controller.text));
      chats.add(const ChatBox(isUserSaying: false, message: '...'));
      input = _controller.text;
      _controller.text = '';
    });

    _queryChatbot();
  }

  Future<void> _queryChatbot() async {
    setState(() {
      _isLoading = true;
    });

    // 사용자 메시지 추가
    messages.add({
      "role": "user",
      "content": input,
    });

    final api = OpenAiApi();
    final apiResponse = await api.chatCompletion(messages);

    // 챗봇의 응답을 messages 리스트에 추가
    messages.add(apiResponse['choices'][0]['message']);

    setState(() {
      _response = apiResponse['choices'][0]['message']['content'];
      _isLoading = false;
      chats.removeLast();
      chats.add(ChatBox(isUserSaying: false, message: _response));
    });
  }
}

class OpenAiApi {
  String? apiKey;

  // Initialize the API Key
  Future<void> initializeApiKey() async {
    apiKey = await EnvVariables.openaiApiKey;
  }

  Future<Map<String, dynamic>> chatCompletion(
      List<Map<String, dynamic>> messages) async {
    // Make sure the API Key is initialized
    if (apiKey == null) {
      await initializeApiKey();
    }

    final url = "https://api.openai.com/v1/chat/completions";

    final response = await http.post(
      Uri.parse(url),
      headers: {
        "Authorization": "Bearer $apiKey",
        "Content-Type": "application/json",
      },
      body: jsonEncode({
        "model": "gpt-4",
        "messages": messages,
        "temperature": 1,
        "max_tokens": 512,
        "top_p": 1,
        "frequency_penalty": 0.4,
        "presence_penalty": 0,
        "stop": ["!quit"]
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      print("Status Code: ${response.statusCode}");
      print("Response Body: ${response.body}");
      throw Exception("Failed to fetch response from OpenAI API");
    }
  }
}
