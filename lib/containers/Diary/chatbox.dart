import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  final bool isUserSaying;
  final String message;

  const ChatBox({
    super.key,
    required this.isUserSaying,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      constraints: const BoxConstraints(minHeight: 110),
      decoration: BoxDecoration(
          color: (isUserSaying)
              ? const Color.fromARGB(255, 255, 255, 255)
              : const Color.fromARGB(255, 224, 224, 224),
          border: const Border(
              bottom: BorderSide(color: Color.fromARGB(255, 216, 216, 216)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                image: (isUserSaying)
                    ? const DecorationImage(
                        image: AssetImage('asset/images/chatProfile/user.png'),
                        fit: BoxFit.fill,
                      )
                    : const DecorationImage(
                        image: AssetImage('asset/images/chatProfile/AI.png'),
                        fit: BoxFit.fill,
                      ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: RichText(
                text: TextSpan(
                  text: message,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
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
