import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

enum UserType { bot, user }

class MessageWidget extends StatelessWidget {
  final String text;
  final UserType userType;

  const MessageWidget({Key? key, required this.text, required this.userType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isBot = userType == UserType.bot;
    final messageAlign = isBot ?  Alignment.centerLeft : Alignment.centerRight;
    final messageColor = isBot ?  Colors.white : const Color.fromRGBO(106, 139, 244, 1);

    return Container(
      margin: EdgeInsets.fromLTRB(isBot ? 0 : 60,8,!isBot ? 0 : 60,8),
      padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 20),
      decoration: BoxDecoration(
        color: messageColor,
        borderRadius: BorderRadius.only(
          topLeft: isBot ? Radius.zero :const Radius.circular(12.0),
          topRight:  const Radius.circular(12.0),
          bottomLeft: const Radius.circular(12.0),
          bottomRight:  isBot ? const Radius.circular(12.0) : Radius.zero,
        ),
        boxShadow: const [
          BoxShadow(
            color:Colors.black12,
            blurRadius: 20,
            offset: Offset(0, 5)
          )
          ]
      ),
      alignment: messageAlign,
      width: double.infinity,
      child: SizedBox(
          width: 300.0,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
            child: isBot 
                ? AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(text),
                  ],
                  repeatForever: false,
                  isRepeatingAnimation: false,
                  totalRepeatCount: 0,
                )
                : Text(text,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,  
                  ),
            ),
          )
      )
    );
  }
}