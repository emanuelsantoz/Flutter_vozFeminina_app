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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: GlobalColors().pink,
          title: Text(
            "Buscar",
            style: TextStyle(color: Colors.white, fontSize: 23),
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
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16, bottom: 20),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 14, color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              60,
                            ),
                            borderSide: BorderSide.none),
                        fillColor: Colors.pink[800],
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                        labelStyle: TextStyle(
                          color: const Color.fromRGBO(173, 20, 87, 1),
                        ),
                        hintText: "Contatos seguros...",
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              controller.update();
                            },
                            style: ButtonStyle(
                                side: WidgetStatePropertyAll(
                                    BorderSide(color: GlobalColors().pink)),
                                foregroundColor: WidgetStatePropertyAll(
                                    GlobalColors().primary),
                                backgroundColor:
                                    const WidgetStatePropertyAll(Colors.white),
                                overlayColor: const WidgetStatePropertyAll(
                                  const Color.fromRGBO(173, 20, 87, 1),
                                ),
                                shadowColor: const WidgetStatePropertyAll(
                                    Color.fromARGB(255, 255, 255, 255))),
                            child: Text(
                              'Cidade',
                              style: TextStyle(
                                color: WidgetStateColor.resolveWith((states) {
                                  if (states.contains(WidgetState.selected)) {
                                    return Colors
                                        .white; // Cor do texto quando pressionado
                                  } else {
                                    return GlobalColors()
                                        .primary; // Cor do texto quando não pressionado
                                  }
                                }),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                side: WidgetStatePropertyAll(
                                    BorderSide(color: GlobalColors().pink)),
                                padding: WidgetStatePropertyAll(
                                    EdgeInsets.only(left: 1, right: 1)),
                                foregroundColor: WidgetStatePropertyAll(
                                    GlobalColors().primary),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.white),
                                overlayColor: const WidgetStatePropertyAll(
                                    Color.fromARGB(255, 122, 58, 125)),
                                shadowColor: WidgetStatePropertyAll(
                                    const Color.fromARGB(255, 122, 58, 125))),
                            child: Text(
                              'Lugares seguros',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                side: WidgetStatePropertyAll(
                                    BorderSide(color: GlobalColors().pink)),
                                foregroundColor: WidgetStatePropertyAll(
                                    GlobalColors().primary),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.white),
                                overlayColor: WidgetStatePropertyAll(
                                    Color.fromARGB(255, 122, 58, 125)),
                                shadowColor: WidgetStatePropertyAll(
                                    Color.fromARGB(255, 122, 58, 125))),
                            child: Text('Uber'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Oportunidades",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                      alignment: Alignment.topLeft,
                      child:
                          Text("Cozinheira", textDirection: TextDirection.rtl),
                    ),
                    Image.asset(
                      "assets/img/fotoFundoEstacaoBarra.png", // 30% da altura da tela
                      width: MediaQuery.of(context).size.width +
                          100, // Ocupa toda a largura disponível
                      fit: BoxFit.cover,
                    ),
                    Column(children: [
                      const SizedBox(height: 10),
                      SizedBox(height: 10),
                      Image.asset(
                        "assets/img/fotoFundoPorteiraSul.png",
                        width: MediaQuery.of(context).size.width +
                            100, // Ocupa toda a largura disponível
                        fit: BoxFit.cover,
                      ),
                    ])
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            NavigationBarVozFemina(context: context, selectIndex: 0));
  }
}
