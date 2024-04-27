// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/app/constants.dart';
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
  bool scrollButtonVisible = false;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() => scrollButtonVisible = _scrollController.offset < _scrollController.position.maxScrollExtent * 0.85);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  //TODO INVESTIGAR COMO HACER QUE EL SCROLL SE MUEVA A MEDIDA QUE SE VA ESCRIBIENDO LA RESPUESTA PARA NO TENER QUE NAVEGAR MANUALMENTE
  //TODO INVESTIGAR COMO HACER PARA QUE AL HACER SCROLL HACIA ARRIBA, LOS TEXTOS YA ESCRITOS PREVIAMENTE NO SE VUELVAN A CARGAR
  //TODO METER EFECTO HÁPTICO AL ESCRIBIR EL CHAT
  //TODO CAMBIAR EL FLOATING ACTION PARA QUE SEA SIMILAR AL DE LA APP DE CHATGPT
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
        bottom: false,
        child: Stack(
          children: [
            Column(
            children: [
              Expanded(
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
                        children: ref.watch(settingsProvider).widgets
                      ),
                    ),
                  ),
                  
                ),
              ),
              Container(
                height: 100,
                color: AppTheme.colorBlueLight,
                padding: const EdgeInsets.symmetric(horizontal:12),
                child: Padding(
                  padding: const EdgeInsets.only(bottom:40.0),
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
                          ref.read(settingsProvider.notifier).addNewMessage(
                            MessageWidget(text: _textEditingController.text.toString(), 
                            userType: UserType.user));
                        }catch(_){
                          injector<UiUtils>().showSnackBar(
                            context: context,
                            icon: const Icon(Icons.warning_rounded,color: AppTheme.colorRed),
                            text: 'Error getting response');
                        }
                        _textEditingController.clear();
                      }, icon: const Icon(Icons.send_rounded)),
                    ],
                  ),
                ),
              )
            ],
            ),
            if(ref.watch(settingsProvider).widgets.isEmpty)
              Suggestions(onTap : (index){
                _textEditingController.clear();
                _textEditingController.text = suggestions[index];
              }),
            Visibility(
              visible: scrollButtonVisible,
              child: Padding(
                padding: const EdgeInsets.only(bottom:80.0),
                child: FloatingActionButton(
                  onPressed: () => _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 100), curve: Curves.linear),
                  child: const Icon(Icons.swipe_down_rounded),
                ),
              )),
          ]
        ),
      ),
    );
  }

  void _resetAction() async {
    if(await ref.read(settingsProvider.notifier).resetSettings()){
      setState(() => scrollButtonVisible = false);
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
}