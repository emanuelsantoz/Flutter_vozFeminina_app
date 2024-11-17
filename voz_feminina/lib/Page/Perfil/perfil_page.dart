import 'package:flutter/material.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:voz_feminina/Core/widget/cardPerfilUsuario.dart';
import 'package:voz_feminina/Core/widget/cardPerfilUsuarioFechado.dart';
import 'package:voz_feminina/Core/widget/navigationBar.dart';
import 'package:voz_feminina/Page/Perfil/perfil_controller.dart';

class PerfilPage extends GetView<PerfilController> {
  PerfilPage({super.key});

  int _currentSelection = 0;

  Map<int, Widget> _children = {
    0: Text(' Pessoais '),
    1: Text(' Sensíveis '),
  };

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PerfilController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Meu perfil",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFECBAB9),
                          borderRadius: BorderRadius.circular(10)),
                      padding:
                          const EdgeInsetsDirectional.only(start: 3, end: 3),
                      child: Padding(
                        padding: EdgeInsetsDirectional.all(15),
                        child: Column(
                          children: [
                            // cabeçalho
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                      "assets/img/minhaFotoPerfil.png"),
                                ),
                                SizedBox(height: 10, width: 23),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.nomeUsuario,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    Text(
                                      "20 anos",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                              height: 23,
                            ),
                            AdvancedSegment(
                              // AdvancedSegmentController
                              segments: const {
                                // Map<String, String>
                                'all': 'Pessoais',
                                'primary': 'Sensíveis',
                              },
                              activeStyle: TextStyle(
                                // TextStyle
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w600,
                              ),
                              inactiveStyle: TextStyle(
                                // TextStyle
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w300,
                              ),
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255), // Color
                              sliderColor: Color(0xFFECBAB9), // Color
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(15.0)), // BorderRadius
                              itemPadding: const EdgeInsets.symmetric(
                                // EdgeInsets
                                horizontal: 24,
                                vertical: 10,
                              ),
                              animationDuration: Duration(milliseconds: 250),
                              shadow: <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 248, 248, 248),
                                  blurRadius: 8.0,
                                ),
                              ], // Duration
                            ),

                            SizedBox(height: 13),
                            cardPerfilUsuarioDados(
                                context,
                                Icons.person_outline,
                                "Nome do usuario",
                                controller.nomeUsuario),
                            cardPerfilUsuarioDados(context, Icons.email,
                                "Email", controller.emailUsuario),

                            cardPerfilUsuarioDados(context, Icons.phone,
                                "Telefone", controller.telefoneUsuario),
                          ],
                        ),
                      )),
                  SizedBox(height: 40),
                  Text(
                    "Configurações",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 5),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFECBAB9),
                          borderRadius: BorderRadius.circular(10)),
                      padding:
                          const EdgeInsetsDirectional.only(start: 3, end: 3),
                      child: Padding(
                          padding: EdgeInsetsDirectional.all(15),
                          child: Column(children: [
                            // cabeçalho
                            Column(children: [
                              cardPerfilUsuarioDadosFechado(context,
                                  Icons.palette, "Tema", "Personalize cores"),
                              cardPerfilUsuarioDadosFechado(
                                  context,
                                  Icons.notifications,
                                  "Tema",
                                  "desative as notificações"),
                              cardPerfilUsuarioDadosFechado(
                                  context,
                                  Icons.edit_document,
                                  "Documentos",
                                  "Personalize seus documentos"),
                            ])
                          ])))
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: NavigationBarVozFemina(
          context: context,
          selectIndex: 2,
        ),
      );
    });
  }
}
