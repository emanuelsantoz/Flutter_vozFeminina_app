import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voz_feminina/routes/routes.dart';

class LoginController extends GetxController {
  RxBool isLoading = true.obs;

  GlobalKey<FormState> get formKey => _formKey;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  late String emailSalvo;
  late String senhaSalvo;

  @override
  void onInit() async {
    super.onInit();
    isLoading.value = true;

    isLoading.value = false;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    emailSalvo = prefs.get('email').toString();
    senhaSalvo = prefs.get('senha').toString();
  }

  Future<void> loginUsuario() async {
    if (_formKey.currentState!.validate()) {
      isLoading.value = true;

      if (emailController.text == emailSalvo &&
          senhaController.text == senhaSalvo) {
        Get.snackbar('Sucesso', 'Login com sucesso!');
        emailController.clear();
        senhaController.clear();
        Get.offNamed(Routes.homePage);
      } else {
        isLoading.value = false;
        // Logar o erro para análise posterior
        print('Erro ao cadastrar usuário: Erro a login');
      }
    }
  }

  bool isEmailValid(String email) {
    // Regex para validar o formato do email (pode ser mais sofisticado)
    final RegExp emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+(.[a-zA-Z]+)?$");
    return emailRegExp.hasMatch(email);
  }
}
