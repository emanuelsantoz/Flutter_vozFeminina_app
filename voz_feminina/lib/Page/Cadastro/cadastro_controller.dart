import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:voz_feminina/routes/routes.dart'; // Replace with your actual database file

class CadastroController extends GetxController {
  RxBool isLoading = false.obs;
  RxInt nivelFormulario = 0.obs;
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController confirmarSenhaController =
      TextEditingController();

  GlobalKey<FormState> get formKey => _formKey;
  final _formKey = GlobalKey<FormState>();

  Future<void> cadastrarUsuario() async {
    if (_formKey.currentState!.validate()) {
      isLoading.value = true;

      try {
        if (!isEmailValid(emailController.text)) {
          isLoading.value = false;
          Get.snackbar('Erro', 'Formato de email inválido.');
          nivelFormulario.value = 2;
          update();
          return;
        }
        if (telefoneController.text.length < 10) {
          isLoading.value = false;
          Get.snackbar('Erro', 'A telefone deve ter pelo menos 11 caracteres.');
          nivelFormulario.value = 3;
          update();
          return;
        }
        if (senhaController.text.length < 8) {
          isLoading.value = false;
          Get.snackbar('Erro', 'A senha deve ter pelo menos 8 caracteres.');
          nivelFormulario.value = 4;
          update();
          return;
        }

        if (senhaController.text != confirmarSenhaController.text) {
          isLoading.value = false;
          Get.snackbar('Erro', 'O confirmar senha esta incorreto');
          nivelFormulario.value = 4;
          update();
          return;
        }

        // Armazenar os dados no SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('username', nomeController.text);
        await prefs.setString('email', emailController.text);
        await prefs.setString('senha', senhaController.text);
        await prefs.setString('telefone', telefoneController.text);

        isLoading.value = false;
        Get.snackbar('Sucesso', 'Usuário cadastrado com sucesso!');
        nomeController.clear();
        emailController.clear();
        senhaController.clear();
        Get.offNamed(Routes.loginPage);
      } catch (e) {
        isLoading.value = false;
        // Logar o erro para análise posterior
        print('Erro ao cadastrar usuário: $e');

        if (e is DatabaseException) {
          Get.snackbar(
              'Erro', 'Ocorreu um erro ao conectar com o banco de dados.');
        } else {
          Get.snackbar('Erro', 'Ocorreu um erro inesperado.');
        }
      }
    }
  }

  bool isEmailValid(String email) {
    // Regex para validar o formato do email (pode ser mais sofisticado)
    final RegExp emailRegExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+(.[a-zA-Z]+)?$");
    return emailRegExp.hasMatch(email);
  }

  String hashPassword(String password) {
    // Utilize uma biblioteca de hashing segura como o bcrypt para criptografar a senha
    // Exemplo usando o pacote bcrypt_flutter:
    String hashedPassword = (password);
    return hashedPassword;
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
