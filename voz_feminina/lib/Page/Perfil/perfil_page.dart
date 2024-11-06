import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:voz_feminina/Core/widget/cardPerfilUsuario.dart';
import 'package:voz_feminina/Core/widget/navigationBar.dart';
import 'package:voz_feminina/Page/Perfil/perfil_controller.dart';

class PerfilPage extends GetView<PerfilController> {
  PerfilPage({super.key});

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
                Text("Meu perfil"),
                Container(
                  decoration: BoxDecoration(color: Colors.redAccent[100],borderRadius: BorderRadius.circular(5)),           
                  padding: EdgeInsetsDirectional.only(start: 3, end: 3),
                  child: Column(children: [
                    // cabeçalho
                    Row(
                      children: [
                        Icon(Icons.person),
                        Column(
                          children: [
                            Text("Alana Santos"),
                            Text("20 anos"),
                          ],
                        )
                      ],
                    ),
                    cardPerfilUsuarioDados(context,  Icons.person_outline, "Alana Santos de Souza" ),
                    Divider(color: Colors.black,),
                    cardPerfilUsuarioDados(context,  Icons.person_outline, "Alana Santos de Souza" ),
                    Divider(color: Colors.black,),
                    cardPerfilUsuarioDados(context,  Icons.person_outline, "Alana Santos de Souza" ),
                    Divider(color: Colors.black,),
                  ],),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationBarVozFemina(context: context, selectIndex: 2,),
    );
  }
}
