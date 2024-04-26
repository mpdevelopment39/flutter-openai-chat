import 'package:flutter/material.dart';
import 'package:flutter_openai_chat/ui/widgets/message_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 246, 252, 1),
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left:8.0),
          child: CircleAvatar(
            backgroundColor: Color.fromRGBO(106, 139, 244, 1),
            radius: 6,
            child: Icon(Icons.chat,color: Colors.white)),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('OpenAI Chat Example'),
            Text('How can i help you?',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
      body: Column(
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
    );
  }
}