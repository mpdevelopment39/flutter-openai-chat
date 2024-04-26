import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/app/theme.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

enum UserType { assistant, user }

class MessageWidget extends StatelessWidget {
  final String text;
  final UserType userType;

  const MessageWidget({Key? key, required this.text, required this.userType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAssistant = userType == UserType.assistant;
    final messageAlign = isAssistant ? Alignment.centerLeft : Alignment.centerRight;
    final messageColor = isAssistant ? AppTheme.colorWhite : AppTheme.colorBlue;

    return Container(
      margin: EdgeInsets.fromLTRB(isAssistant ? 0 : 60,8,!isAssistant ? 0 : 60,8),
      padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 20),
      decoration: BoxDecoration(
        color: messageColor,
        borderRadius: BorderRadius.only(
          topLeft: isAssistant ? Radius.zero :const Radius.circular(12.0),
          topRight:  const Radius.circular(12.0),
          bottomLeft: const Radius.circular(12.0),
          bottomRight:  isAssistant ? const Radius.circular(12.0) : Radius.zero,
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
            child: /* Text(text,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: isAssistant ? Colors.black : Colors.white,
                    fontSize: 16.0,
                  )
                ) */
            
             isAssistant 
                ? AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(text),
                  ],
                  repeatForever: false,
                  isRepeatingAnimation: false,
                  displayFullTextOnTap: true,
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