import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/app/constants.dart';
import 'package:flutter_openai_chat/app/theme.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lottie/lottie.dart';

enum UserType { assistant, user }

class MessageWidget extends StatelessWidget {
  final String text;
  final UserType userType;
  final bool isWriting;

  const MessageWidget({Key? key, required this.text, required this.userType,this.isWriting = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAssistant = userType == UserType.assistant;
    final messageAlign = isAssistant ? Alignment.centerLeft : Alignment.centerRight;
    final messageColor = isAssistant ? AppTheme.colorWhite : AppTheme.colorBlue;
    if(isWriting && isAssistant){
      return FadeInDown(
        from: 20,
        child: Container(
        alignment: messageAlign,
        child: SizedBox(
          width: 70,
          child: Lottie.asset('$assetsAnimations/typing.json')),
        ),
      );
    }
    Widget child = Container(
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
            color:AppTheme.colorBlackLight,
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
              color: AppTheme.colorBlack,
            ),
            child: isAssistant 
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
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: AppTheme.colorWhite,
                  fontSize: 16.0,
                ),
            ),
          )
      )
    );
    return isAssistant 
      ? FadeInLeft(child: child) 
      : FadeInRight(
        duration: const Duration(milliseconds: 300),
        child: child
      );
  }
}