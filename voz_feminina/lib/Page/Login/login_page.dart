import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voz_feminina/Page/Login/login_controller.dart';
import 'package:voz_feminina/routes/routes.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  "assets/img/vozFeminina.png",
                  height: 40,
                  alignment: AlignmentDirectional.centerEnd,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Bem vindo ao\nVoz Feminina de\nVolta!',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Realize o login',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            icon: const Icon(Icons.g_mobiledata,
                                color: Color(0xFFE33629)),
                            backgroundColor: Colors.white,
                            label: const Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "Continuar com o Google",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            icon: const Icon(Icons.facebook,
                                color: Color(0xFF01C5CFF)),
                            backgroundColor: Colors.white,
                            label: const Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "Continuar com o Facebook",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            icon: const Icon(Icons.apple,
                                color: Color(0xFF1E1E1E)),
                            backgroundColor: Colors.white,
                            label: const Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "Continuar com o Apple",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                      height: 1,
                      width: 95,
                      color: Colors.black,
                      margin: const EdgeInsets.all(10),
                    )),
                    const Text('OU'),
                    Expanded(
                        child: Container(
                      height: 1,
                      width: 95,
                      color: Colors.black,
                      margin: const EdgeInsets.all(10),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GetBuilder<LoginController>(builder: (controller) {
                  return Form(
                      key: controller.formKey,
                      child:
                          // Formulário de login
                          Column(
                        children: [
                          TextField(
                            controller: controller.emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Exemplo',
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            controller: controller.senhaController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Senha',
                              suffixIcon: Icon(Icons.visibility),
                            ),
                          ),
                        ],
                      ));
                }),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    const Text('Lembrar de mim'),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Get.offNamed(Routes.cadastroPage);
                  },
                  child: const Text(
                    'Cadastar-se?',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xFF975173))),
                  onPressed: () {
                    controller.loginUsuario();
                  },
                  child: const Text('Entrar',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          height: 3)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
