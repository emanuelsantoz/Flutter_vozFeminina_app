import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:voz_feminina/Page/Lista_chat/lista_chat_controller.dart';

class ChatListBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ChatListController>(() => ChatListController());
  }
}