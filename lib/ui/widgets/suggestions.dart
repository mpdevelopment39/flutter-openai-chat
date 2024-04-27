import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/app/constants.dart';

class Suggestions extends StatelessWidget {
  final Function(int index) onTap;
  const Suggestions({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 90,
      left: 10,
      right: 0,
      child: SizedBox(
        height: 70,
        child: ListView.builder(
          itemCount: suggestions.length,
          scrollDirection: Axis.horizontal,
          controller: ScrollController(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => onTap(index),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                  ),
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Center(
                      child: Text(suggestions[index],maxLines: 2)
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}