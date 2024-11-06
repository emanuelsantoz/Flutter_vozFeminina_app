import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:voz_feminina/Core/colors.dart';
import 'package:voz_feminina/Core/widget/navigationBar.dart';
import 'package:voz_feminina/Page/Pesquisa/pesquisa_controller.dart';

class PesquisaPage extends GetView<PesquisaController> {
  PesquisaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors().pink,
        title: const Text(
          "Buscar",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        toolbarHeight: 114,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(00),
              bottomRight: Radius.circular(30)),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16, bottom: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.pink[800], // Ajuste a cor conforme necessário
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20), // Ajuste o raio dos cantos
                    ),
                    elevation: 5,
                    fixedSize: Size(334, 30), // Adiciona sombra
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Encontre um bom relaxante',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Cidade')),
                ElevatedButton(onPressed: () {}, child: Text('Lugares seguros')),
                ElevatedButton(onPressed: () {}, child: Text('Uber'), style: ButtonStyle(fixedSize: WidgetStatePropertyAll(Size(30, 7)),)),
              ],



            ),
          ],
        ),
      ),
      bottomNavigationBar:
          NavigationBarVozFemina(context: context, selectIndex: 0),
    );
  }
}

