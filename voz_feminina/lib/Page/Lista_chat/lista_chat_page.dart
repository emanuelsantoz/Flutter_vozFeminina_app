import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:voz_feminina/Page/Lista_chat/lista_chat_controller.dart';

class ListaChatPage extends GetView<ListaChatController> {
  const ListaChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timeline'),
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
          );
        },
      ),
    );
  }
}
