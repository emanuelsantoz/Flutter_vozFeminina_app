import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:voz_feminina/Core/colors.dart';
import 'package:voz_feminina/Core/widget/navigationBarListChat.dart';
import 'package:voz_feminina/Page/Chat/chat_controller.dart';
import 'package:voz_feminina/Page/Lista_chat/lista_chat_controller.dart';
import 'package:voz_feminina/routes/routes.dart';

class ChatListPage extends GetView<ChatListController> {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors().second,
        title: const Text(
          'TIME LAB',
          style: TextStyle(color: Colors.white),
        ),
        leading: const BackButton(color: Colors.white,),
      ),
      body: ListView.builder(
  itemCount: controller.tweets.length,
  itemBuilder: (context, index) {
    final tweet = controller.tweets[index];
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(tweet.imagem ?? ''),
      ),
      title: Text('@${tweet.nomeUsuario}', style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(tweet.texto),
      trailing: Text('${gerarNumeroAleatorio()}m'),
      onLongPress: () => Get.toNamed(Routes.chatPage),
      onTap: () {
        ChatController().onClose();
        controller.SalvarNomeChatList(tweet.nomeUsuario, tweet.texto);
        ChatController().pegarNomeUsuario();
        Get.toNamed(Routes.chatPage, arguments: tweet.nomeUsuario);
      }
    );
  },
      ),
      bottomNavigationBar: NavigationBarListChat(context: context, selectIndex: 0),
    );
  }
}

int gerarNumeroAleatorio() {
  final random = Random();
  return random.nextInt(61); // 61 porque queremos incluir o 60
}