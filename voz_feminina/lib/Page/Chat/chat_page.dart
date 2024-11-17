import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:voz_feminina/Page/Chat/chat_controller.dart';

class ChatPage extends GetView<ChatController> {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatController>(builder: (controller) {
      return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: BackButton(
                  color: Color.fromARGB(
                255,
                255,
                255,
                255,
              )),
              onPressed: () {
                Get.back();
              },
            ),
            title: Text(
              controller.nomeUsuario,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Color.fromARGB(
                    255,
                    255,
                    255,
                    255,
                  ),
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.pink[100]!,
          ),
          body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 248, 187, 208)!,
                    Colors.pink[50]!
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: controller.mensagens.length,
                        itemBuilder: (context, index) {
                          final mensagem = controller.mensagens[index];
                          return Align(
                            alignment: mensagem.isEnviada
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: mensagem.isEnviada
                                    ? Color(0xFFF8A2C0)
                                    : Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                mensagem.texto,
                                style: TextStyle(
                                  color: mensagem.isEnviada
                                      ? Color.fromARGB(255, 233, 233, 233)
                                      : const Color.fromARGB(255, 36, 35, 35),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: controller.mensagemController,
                              decoration: InputDecoration(
                                hintText: 'Digite sua mensagem',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.send),
                            onPressed: controller.enviarMensagem,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )));
    });
  }
}

class Mensagem {
  final String texto;
  final String hora;
  final bool isEnviada;

  Mensagem({required this.texto, required this.hora, this.isEnviada = false});
}
