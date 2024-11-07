import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:voz_feminina/Core/colors.dart';
import 'package:voz_feminina/Core/widget/navigationBarListChat.dart';
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
        leading: const BackButton(),
      ),
      body: ListView.builder(
        itemCount: controller.tweets.length,
        itemBuilder: (context, index) {
          final tweet = controller.tweets[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(tweet.imagem ?? ''),
            ),
            title: Text('@${tweet.handle}'),
            subtitle: Text(tweet.texto),
            trailing: Text('${tweet.curtidas} ❤️'),
            
            onLongPress: () => Routes.chatPage,
            onTap: () => Routes.chatPage,
          );
        },
      ),
      bottomNavigationBar: NavigationBarListChat(context: context, selectIndex: 0),
    );
  }
}
