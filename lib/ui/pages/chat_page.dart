// ignore_for_file: use_build_context_synchronously
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_openai_chat/app/constants.dart';
import 'package:flutter_openai_chat/app/helpers.dart';
import 'package:flutter_openai_chat/app/injector.dart';
import 'package:flutter_openai_chat/app/theme.dart';
import 'package:flutter_openai_chat/ui/providers.dart';
import 'package:flutter_openai_chat/ui/ui_utils.dart';
import 'package:flutter_openai_chat/ui/widgets/message_widget.dart';
import 'package:flutter_openai_chat/ui/widgets/modal_options.dart';
import 'package:flutter_openai_chat/ui/widgets/suggestions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  final TextEditingController _textEditingController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  StateProvider<bool> scrollVisible = StateProvider((ref) => false);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      ref.read(scrollVisible.notifier).state = _scrollController.offset < _scrollController.position.maxScrollExtent * 0.85;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeInDown(
          duration: const Duration(milliseconds: 300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(ref.watch(chatProvider).model),
              Text('Temperature: ${ref.watch(chatProvider).temperature}',style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
        ),
        actions: [
          FadeInRight(
            duration: const Duration(milliseconds: 400),
            child: Row(
              children: [
                IconButton(onPressed: _resetAction,icon: const Icon(Icons.restore)),
                Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: IconButton(onPressed: _settingsAction,icon: const Icon(Icons.settings)),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => injector<Helpers>().hideKeyboard(context),
                  child: RawScrollbar(
                    thumbVisibility: true,
                    thumbColor: AppTheme.colorGrey,
                    controller: _scrollController,
                    thickness: 4,
                    radius: const Radius.circular(4),
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: ref.watch(chatProvider).widgets
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              FadeInUp(
                duration: const Duration(milliseconds: 400),
                from: 30,
                child: Container(
                height: 60,
                color: AppTheme.colorBlueLight,
                padding: const EdgeInsets.symmetric(horizontal:12),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: TextField(
                          controller: _textEditingController,
                          textCapitalization: TextCapitalization.sentences,
                          decoration: const InputDecoration.collapsed(
                            hintText: "Ask me something",
                          ),
                        ),
                      )
                    ),
                    IconButton(onPressed: () async {
                      if(_textEditingController.text.isEmpty) return;
                      try{
                        String message = _textEditingController.text;
                        _textEditingController.clear();
                        HapticFeedback.selectionClick();
                        await ref.read(chatProvider.notifier).addNewMessage(
                          MessageWidget(text: message, 
                          userType: UserType.user));
                      }catch(_){
                        injector<UiUtils>().showSnackBar(
                          context: context,
                          icon: const Icon(Icons.warning_rounded,color: AppTheme.colorRed),
                          text: 'Error getting response. Try again');
                      }
                      _scrollController.animateTo(_scrollController.position.maxScrollExtent + 300, duration: const Duration(milliseconds: 100), curve: Curves.linear);
                    }, icon: const Icon(Icons.send_rounded)),
                  ],
                ),
              ),
            )],
            ),
            if(ref.watch(chatProvider).widgets.isEmpty)
              Suggestions(onTap : (index){
                _textEditingController.clear();
                _textEditingController.text = suggestions[index];
              }),
            Positioned(
              bottom: 75,
              left: 0,
              right: 0,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: ref.watch(scrollVisible) ? 1 : 0,
                child: GestureDetector(
                  onTap: () => _scrollController.animateTo(_scrollController.position.maxScrollExtent + 300, duration: const Duration(milliseconds: 100), curve: Curves.linear),
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: AppTheme.colorBlue,
                    child: Icon(Icons.arrow_downward_rounded)),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }

  void _resetAction() async {
    HapticFeedback.selectionClick();
    injector<Helpers>().hideKeyboard(context);
    if(await ref.read(chatProvider.notifier).resetSettings()){
      ref.read(scrollVisible.notifier).state = false; 
      _textEditingController.clear();
      injector<UiUtils>().showSnackBar(
        context: context, 
        icon: const Icon(Icons.check_circle_rounded,color: AppTheme.colorGreen),
        text: 'Settings reset correctly');
    }else{
      injector<UiUtils>().showSnackBar(
        context: context, 
        icon: const Icon(Icons.warning_rounded,color: AppTheme.colorRed),
        text: 'Settings reset failed');
    }
  }

  void _settingsAction(){
    HapticFeedback.selectionClick();
    injector<UiUtils>().showModalBottomWithOptions(
      context: context,
      title: 'Configure requests',
      listOptions: [
        OptionModal(
          'Model',
          () {
            Navigator.pop(context);
            injector<UiUtils>().showWheelOptions(context,
              "Select model",
              models,
              (selectedIndex) async {
                HapticFeedback.selectionClick();
                ref.watch(chatProvider.notifier).updateModel(models[selectedIndex]);
                Navigator.pop(context);
              }
            );
          },
          const Icon(Icons.model_training_rounded)),
        OptionModal(
          'Temperature',
          () {
            Navigator.pop(context);
            injector<UiUtils>().showWheelOptions(context,
              "Select temperature",
              temperatures,
              (selectedIndex) async {
                HapticFeedback.selectionClick();
                ref.watch(chatProvider.notifier).updateTemperature(temperatures[selectedIndex]);
                Navigator.pop(context);
              }
            );
          },
          const Icon(Icons.thermostat_rounded)
        ),
      ]
    );
  }
}