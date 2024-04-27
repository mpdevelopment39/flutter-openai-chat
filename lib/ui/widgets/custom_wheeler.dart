// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_openai_chat/app/constants.dart';
import 'package:flutter_openai_chat/ui/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wheel_slider/wheel_slider.dart';
import '../../app/theme.dart';

class CustomWheleer extends ConsumerStatefulWidget {
  final String title;
  final List<dynamic> elements;
  final Function(int selectedIndex) saveAction;

  const CustomWheleer({Key? key, required this.title, required this.elements, required this.saveAction}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomWheleerState();
}

class _CustomWheleerState extends ConsumerState<CustomWheleer> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    if(widget.elements == temperatures){
      selectedIndex = temperatures.indexOf(ref.read(settingsProvider).temperature);
    }else{
      selectedIndex = models.indexOf(ref.read(settingsProvider).model);
    }
  }

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
                          allowPointerTappable: true,
                          itemSize: 30,
                          listHeight: 150,
                          enableAnimation: false,
                          showPointer: false,
                          isInfinite: false,
                          isVibrate: true,
                          initValue: selectedIndex,
                          verticalListWidth: double.infinity,
                          listWidth: double.infinity,
                          onValueChanged: (index) {
                            setState(() => selectedIndex = index);
                            HapticFeedback.lightImpact();
                          },
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