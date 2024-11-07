import 'package:flutter/material.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:voz_feminina/Core/widget/cardPerfilUsuario.dart';
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text("Meu perfil", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                SizedBox(height: 10),
                Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFECBAB9),
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsetsDirectional.only(start: 3, end: 3),
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(15),
                      child: Column(
                        children: [
                          // cabeçalho
                          Row(
                            children: [
                              Image.asset("assets/img/fotoPerfil.png"),
                              const SizedBox(
                                width: 10,
                                height: 23,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Alana Santos"),
                                  Text("20 anos"),
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
                            backgroundColor: Color.fromARGB(255, 255, 255, 255), // Color
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

                          cardPerfilUsuarioDados(context, Icons.person_outline,
                              "Nome do usuario", "Alana Santos de Souza"),
                          cardPerfilUsuarioDados(context, Icons.email,
                          "Email",
                              "Alana Santos de Souza"),
                          cardPerfilUsuarioDados(context, Icons.phone,
                          "Telefone",
                              "14 99 012-2311"),
                        ],
                      ),
                    ))
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
  }
}
