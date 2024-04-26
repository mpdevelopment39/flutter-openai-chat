import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/app/injector.dart';
import 'package:flutter_openai_chat/ui/ui_utils.dart';
import 'package:flutter_openai_chat/ui/widgets/message_widget.dart';
import 'package:flutter_openai_chat/ui/widgets/modal_options.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

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
            const Text('OpenAI Chat Example'),
            Text('How can i help you?',style: Theme.of(context).textTheme.bodyMedium),
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
                        ['GPT 3.5','GPT 4 TURBO','Dall-e'],
                        (selectedIndex) async {
                          Navigator.pop(context);
                        }
                      );
                    },
                    const Icon(Icons.model_training_rounded)),
                  OptionModal('Temperature', () {
                      Navigator.pop(context);
                      injector<UiUtils>().showWheelOptions(context,
                        "Select temperature",
                        [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1],
                        (selectedIndex) async {
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
                    MessageWidget(
                      text: '¡Hola! ¿Qué tal? con un texto larguisimo para ver como se comporta el contenedor y si cabe todo el texto en varias lineas. Sorprendentemente funciona como se espera.',
                      userType: UserType.user,
                    ),
                    MessageWidget(
                      text: '¡Hola! ¿Qué tal? con un texto larguisimo para ver como se comporta el contenedor y si cabe todo el texto en varias lineas. Sorprendentemente funciona como se espera.',
                      userType: UserType.bot,
                    ),
                    MessageWidget(
                      text: '¡Hola! ¿Qué tal? con un texto larguisimo para ver como se comporta el contenedor y si cabe todo el texto en varias lineas. Sorprendentemente funciona como se espera.',
                      userType: UserType.bot,
                    ),
                    MessageWidget(
                      text: '¡Hola! ¿Qué tal? con un texto larguisimo para ver como se comporta el contenedor y si cabe todo el texto en varias lineas. Sorprendentemente funciona como se espera.',
                      userType: UserType.user,
                    ),
                    MessageWidget(
                      text: '¡Hola! ¿Qué tal? con un texto larguisimo para ver como se comporta el contenedor y si cabe todo el texto en varias lineas. Sorprendentemente funciona como se espera.',
                      userType: UserType.user,
                    ),
                    MessageWidget(
                      text: '¡Hola! ¿Qué tal? con un texto larguisimo para ver como se comporta el contenedor y si cabe todo el texto en varias lineas. Sorprendentemente funciona como se espera.',
                      userType: UserType.bot,
                    ),
                    MessageWidget(
                      text: '¡Hola! ¿Qué tal? con un texto larguisimo para ver como se comporta el contenedor y si cabe todo el texto en varias lineas. Sorprendentemente funciona como se espera.',
                      userType: UserType.user,
                    ),
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
                          hintText: "Con que puedo ayudarte",
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