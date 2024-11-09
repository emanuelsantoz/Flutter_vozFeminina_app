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
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16, bottom: 20),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.pink[800], // Ajuste a cor conforme necessário
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Ajuste o raio dos cantos
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Cidade'),
                        style: ButtonStyle(
                            foregroundColor:
                                WidgetStatePropertyAll(GlobalColors().primary),
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white),
                            overlayColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 122, 58, 125)),
                            shadowColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 122, 58, 125))),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Lugares seguros'),
                        style: ButtonStyle(
                            foregroundColor:
                                WidgetStatePropertyAll(GlobalColors().primary),
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white),
                            overlayColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 122, 58, 125)),
                            shadowColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 122, 58, 125))),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            foregroundColor:
                                WidgetStatePropertyAll(GlobalColors().primary),
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.white),
                            overlayColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 122, 58, 125)),
                            shadowColor: WidgetStatePropertyAll(
                                Color.fromARGB(255, 122, 58, 125))),
                        child: Text('Uber'),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Oportunidades",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Cozinheira", textDirection: TextDirection.rtl),
                  ),
                  Column(children: [
                    SizedBox(height: 10),
                    Image.asset(
                      "assets/img/fotoFundoEstacaoBarra.png",
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      "assets/img/fotoFundoPorteiraSul.png",
                    ),
                  ])
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar:
            NavigationBarVozFemina(context: context, selectIndex: 0));
  }
}
