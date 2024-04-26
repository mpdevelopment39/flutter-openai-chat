// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/app/constants.dart';
import 'package:flutter_openai_chat/app/injector.dart';
import 'package:flutter_openai_chat/app/theme.dart';
import 'package:flutter_openai_chat/ui/providers.dart';
import 'package:flutter_openai_chat/ui/ui_utils.dart';
import 'package:flutter_openai_chat/ui/widgets/message_widget.dart';
import 'package:flutter_openai_chat/ui/widgets/modal_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key});

@override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  final TextEditingController _textEditingController = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    Future(() => _insertStartMessage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colorBackground,
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(ref.watch(settingsProvider).model),
            Text('Temperature: ${ref.watch(settingsProvider).temperature}',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        actions: [
          IconButton(
            onPressed: _resetAction, 
            icon: const Icon(Icons.restore)
          ),
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: IconButton(
              onPressed: _settingsAction, 
              icon: const Icon(Icons.settings)
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: RawScrollbar(
                thumbVisibility: true,
                thumbColor: AppTheme.colorGrey,
                thickness: 4,
                radius: const Radius.circular(4),
                child: ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: ref.watch(settingsProvider).messages
                ),
              ),
            ),
            Container(
              height: 70,
              color: AppTheme.colorWhite,
              padding: const EdgeInsets.symmetric(horizontal:12),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: TextField(
                        controller: _textEditingController,
                        style: const TextStyle(color: AppTheme.colorBlack),
                        decoration: const InputDecoration.collapsed(
                          hintText: "Ask me something",
                          hintStyle: TextStyle(color: AppTheme.colorBlack),
                        ),
                      ),
                    )
                  ),
                  IconButton(onPressed: () async {
                    if(_textEditingController.text.isEmpty) return;
                      ref.read(settingsProvider.notifier).addNewMessage(
                        MessageWidget(text: _textEditingController.text.toString(), 
                        userType: UserType.user));
                     _textEditingController.clear();
                     
                       /* ref.read(settingsProvider.notifier).addNewMessage(
                        const MessageWidget(text: '',
                        userType: UserType.assistant,
                        isWriting: true,
                      ));
                      await Future.delayed(const Duration(seconds: 3));
                      ref.read(settingsProvider.notifier).addNewMessage(
                        const MessageWidget(text: 'Texto largo con la respuesta pasado x tiempo',
                        userType: UserType.assistant,
                      )); */
                    
                  }, icon: const Icon(Icons.send)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _resetAction() async {
    if(await ref.read(settingsProvider.notifier).resetSettings()){
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
    Future.delayed(const Duration(milliseconds: 100)).then((value) {
      _insertStartMessage();
    });
  }

  void _settingsAction(){
    injector<UiUtils>().showModalBottomWithOptions(
      context: context,
      title: 'Configure requests',
      listOptions: [
        OptionModal('Model',() {
            Navigator.pop(context);
            injector<UiUtils>().showWheelOptions(context,
              "Select model",
              models,
              (selectedIndex) async {
                ref.watch(settingsProvider.notifier).updateModel(models[selectedIndex]);
                Navigator.pop(context);
              }
            );
          },
          const Icon(Icons.model_training_rounded)),
        OptionModal('Temperature', () {
            Navigator.pop(context);
            injector<UiUtils>().showWheelOptions(context,
              "Select temperature",
              temperatures,
              (selectedIndex) async {
                ref.watch(settingsProvider.notifier).updateTemperature(temperatures[selectedIndex]);
                Navigator.pop(context);
              }
            );
          },
        const Icon(Icons.thermostat_rounded)),
      ]
    );
  }

  void _insertStartMessage(){
    ref.read(settingsProvider.notifier).addNewMessage(
      const MessageWidget(text: 'How can I help you today?  Ask me something like: Tell me the 5 best restaurants in Barcelona.',
      userType: UserType.assistant));
  }
}