import 'package:flutter/material.dart';

class DiaryProv with ChangeNotifier {
  final List<Map<String, dynamic>> _chats = [
    {
      'isUserSaying': false,
      'message': "안녕하세요! 오늘은 어떤 일이 있었나요?",
    }
  ];

  void addChats(bool isUserSaying, String message) {
    _chats.add({
      'isUserSaying': isUserSaying,
      'message': message,
    });
    notifyListeners();
  }

  void removeLastChats() {
    _chats.removeLast();
  }

  List<Map<String, dynamic>> get chats => _chats;
}
