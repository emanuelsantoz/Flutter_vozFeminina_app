import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PesquisaController extends GetxController {
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


  var selectedTabIndex = 0.obs;
  // ... outras variáveis

  void onTabTapped(int index) {
    selectedTabIndex.value = index;
  }
}
