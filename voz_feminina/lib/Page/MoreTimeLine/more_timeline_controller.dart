import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voz_feminina/Core/model/time_line.dart';
import 'package:voz_feminina/Page/home/home_controller.dart';
import 'package:voz_feminina/routes/routes.dart';

class MoreTimeLineController extends GetxController {
  RxBool isLoading = true.obs;
  TextEditingController tituloInputMoreTimeLine = TextEditingController();
  TextEditingController inputMoreTimeLine = TextEditingController();
  late String nomeUsuario;

  @override
  void onInit() async {
    super.onInit();
    await pegarNomeUsuario();
    isLoading.value = true;

    isLoading.value = false;
  }

  @override
  void onClose() async{
    super.onClose();
    tituloInputMoreTimeLine.clear();
    inputMoreTimeLine.clear();
    tituloInputMoreTimeLine.dispose();
    inputMoreTimeLine.dispose();
    tituloInputMoreTimeLine.text = "";
    inputMoreTimeLine.text = "";
    update();
  }

  pegarNomeUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    nomeUsuario = prefs.getString("username").toString();
    update();
  }

  criarUmNovoComentario(titulo, texto, imagem) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String usarname = prefs.get('username').toString();

    if (titulo != "" && texto != "") {
      Tweet newTweet = Tweet(
          nomeUsuario: usarname, texto: texto, imagem: imagem, titulo: titulo);
      Get.find<HomeController>().addTweet(newTweet);
      Get.offNamed(Routes.homePage);
    }
  }
}
