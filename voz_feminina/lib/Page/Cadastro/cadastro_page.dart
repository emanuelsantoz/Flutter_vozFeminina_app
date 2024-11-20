import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voz_feminina/Core/colors.dart';
import 'package:voz_feminina/Page/Cadastro/cadastro_controller.dart';

// ignore: must_be_immutable
class CadastroPage extends GetView<CadastroController> {
  CadastroPage({super.key});
  RxInt contador = 0.obs;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CadastroController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            onPressed: () {
              controller.nivelFormulario--;
              controller.update();
            },
          ),
          actions: [
            Image.asset("assets/img/vozFeminina.png",
                height: 40, alignment: AlignmentDirectional.centerEnd),
            const SizedBox(
              height: 20,
              width: 20,
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                    key: controller.formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Visibility(
                            visible: controller.nivelFormulario.value == 0
                                ? true
                                : false,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bem vindo ao\nVoz Feminina de\nVolta!',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Cadastre-se para avançar!',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: controller.nivelFormulario.value == 1
                                ? true
                                : false,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                const Text(
                                  'Por favor informe seu nome!',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Continuar',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  controller: controller.nomeController,
                                  decoration: const InputDecoration(
                                      label: Text("Nome:")),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: controller.nivelFormulario.value == 2
                                ? true
                                : false,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                const Text(
                                  'Por favor informe seu email',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Cadastre-se para avançar!',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  controller: controller.emailController,
                                  decoration: const InputDecoration(
                                      label: Text("Email:")),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: controller.nivelFormulario.value == 3
                                ? true
                                : false,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                const Text(
                                  'Por favor informe seu telefone',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Cadastre-se para avançar!',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  controller: controller.telefoneController,
                                  decoration: const InputDecoration(
                                      label: Text("Telefone:")),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: controller.nivelFormulario.value == 4
                                ? true
                                : false,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                const Text(
                                  'Por favor informe sua senha!',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  'Cadastre-se para avançar!',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(height: 20),
                                TextFormField(
                                  controller: controller.senhaController,
                                  decoration: const InputDecoration(
                                      label: Text("Senha:")),
                                ),
                                TextFormField(
                                  controller:
                                      controller.confirmarSenhaController,
                                  decoration: const InputDecoration(
                                      label: Text("Confirmar Senha:")),
                                ),
                              ],
                            ),
                          ),
                        ]))),
          ),
        ),
        bottomSheet: BottomAppBar(
          color: GlobalColors().background,
          height: 110,
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      controller.nivelFormulario++;
                      controller.update();

                      if (controller.nivelFormulario > 4) {
                        controller.cadastrarUsuario();
                      }
                    },
                    backgroundColor: GlobalColors().primary,
                    label: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        controller.verifiqueNivelLogin(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            const Text("Já tenho uma conta!"),
          ]),
        ),
      );
    });
  }
}
