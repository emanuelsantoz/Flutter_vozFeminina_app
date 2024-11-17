import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voz_feminina/Page/Chat/chat_page.dart';

class ChatController extends GetxController {
  RxBool isLoading = true.obs;
  late String nomeUsuario;
  late String msgUsuario;
  final TextEditingController mensagemController = TextEditingController();
  late final List<Mensagem> mensagens;

  @override
  void onInit() async {
    super.onInit();
    await pegarNomeUsuario();
    isLoading.value = true;

    isLoading.value = false;
    mensagens = [
      Mensagem(texto: msgUsuario, hora: '10:00'),
    ];
  }

  void onClose() async {
    super.onClose();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("chatName");
    update();
  }

  void enviarMensagem() {
    mensagens.add(
      Mensagem(
          texto: mensagemController.text,
          hora: DateTime.now().toString(),
          isEnviada: true),
    );
    mensagemController.clear();
    update();
  }

  pegarNomeUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    nomeUsuario = prefs.getString("chatName").toString();
    msgUsuario = prefs.getString("ultimaMsg").toString();
    update();
  }
}
