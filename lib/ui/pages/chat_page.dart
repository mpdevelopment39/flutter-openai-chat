import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/app/constants.dart';
import 'package:flutter_openai_chat/app/injector.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 246, 252, 1),
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
          Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: IconButton(onPressed: (){
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
            }, icon: const Icon(Icons.settings)),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: RawScrollbar(
                thumbVisibility: true,
                thumbColor: Colors.grey,
                thickness: 4,
                radius: const Radius.circular(4),
                child: ListView(
                  padding: const EdgeInsets.all(16.0),
                  children: const [
                    MessageWidget(
                      text: '¡Hola! ¿Qué tal? con un texto larguisimo para ver como se comporta el contenedor y si cabe todo el texto en varias lineas. Sorprendentemente funciona como se espera.',
                      userType: UserType.bot,
                    ),
                    MessageWidget(
                      text: '¡Hola! ¿Qué tal? con un texto larguisimo para ver como se comporta el contenedor y si cabe todo el texto en varias lineas. Sorprendentemente funciona como se espera.',
                      userType: UserType.user,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal:12),
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right:8.0),
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration.collapsed(
                          hintText: "How can i help you?",
                          hintStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.send)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}