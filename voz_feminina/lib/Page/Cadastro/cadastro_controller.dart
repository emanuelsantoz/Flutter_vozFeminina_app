import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroController extends GetxController {
  RxBool isLoading = true.obs;
  RxInt nivelFormulario = 0.obs;
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController confirmarSenhaController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void onInit() async {
    super.onInit();
    isLoading.value = true;

    isLoading.value = false;
  }

  String verifiqueNivelLogin() {
    switch (nivelFormulario.value) {
      case 1:
        return "Continue";
      case 2:
        return "Quase lá";
      case 3:
        return "Cadastre-se";
      default:
        return "Começar";
    }
  }
}
