import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/app/theme.dart';


class CustomSnackbar extends StatelessWidget {
  final String text;
  final Icon icon;

  const CustomSnackbar({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(color: AppTheme.colorBlack),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: icon,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  text,
                  style: const TextStyle(color: AppTheme.colorWhite,fontSize: 14),
                  textAlign: TextAlign.left,
                )),
            ],
          ),
        ),
      ),
    );
  }
}
