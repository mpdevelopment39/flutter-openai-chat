// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:wheel_slider/wheel_slider.dart';
import '../../app/theme.dart';

class CustomWheleer extends StatefulWidget {
  final String title;
  final List<dynamic> elements;
  final Function(int selectedIndex) saveAction;

  const CustomWheleer({Key? key, required this.title, required this.elements, required this.saveAction}) : super(key: key);

  @override
  State<CustomWheleer> createState() => _CustomWheleerState();
}

class _CustomWheleerState extends State<CustomWheleer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 250,
        decoration: const BoxDecoration(
          color: AppTheme.colorBackground,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24))
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0,),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: const Text('Cancel')),
                  Text(widget.title,style: const TextStyle(fontWeight: FontWeight.w600),),
                  TextButton(onPressed: () async {
                    await widget.saveAction(selectedIndex);
                  }, child: const Text('Save')),
                ],
              ),
              Expanded(
                child: SizedBox(
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: AppTheme.colorBlue,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: WheelSlider.customWidget(
                          totalCount: widget.elements.length,
                          horizontal: false,
                          squeeze: 0.7,
                          itemSize: 30,
                          listHeight: 150,
                          enableAnimation: false,
                          showPointer: false,
                          isInfinite: false,
                          isVibrate: true,
                          initValue: selectedIndex,
                          verticalListWidth: double.infinity,
                          onValueChanged: (index) => setState(() => selectedIndex = index),
                          hapticFeedbackType: HapticFeedbackType.vibrate,
                          children: List.generate(widget.elements.length, (index) => Center(child: Text(widget.elements[index].toString()))),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
    );
  }
}