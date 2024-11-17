import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PerfilController extends GetxController {
  RxBool isLoading = true.obs;

  final formKey = GlobalKey<FormState>();
  late String nomeUsuario;
  late String telefoneUsuario;
  late String emailUsuario;

  @override
  void onInit() async {
    super.onInit();
    await pegarNomeUsuario();
    isLoading.value = true;

    isLoading.value = false;
    print(nomeUsuario);
  }

   pegarNomeUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    nomeUsuario = prefs.getString("username").toString();
    telefoneUsuario = prefs.getString("telefone").toString();
    emailUsuario = prefs.getString("email").toString();
    update();
  }
}