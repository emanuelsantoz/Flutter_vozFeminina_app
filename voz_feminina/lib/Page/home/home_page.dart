import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:voz_feminina/Core/colors.dart';
import 'package:voz_feminina/Core/model/time_line.dart';
import 'package:voz_feminina/Core/widget/cardTimeLineTexto.dart';
import 'package:voz_feminina/Core/widget/navigationBar.dart'; // Assuming NavigationBarVozFemina is a custom widget
import 'package:voz_feminina/Page/MoreTimeLine/more_timeline_controller.dart';
import 'package:voz_feminina/Page/home/home_controller.dart';
import 'package:voz_feminina/routes/routes.dart';

class HomePage extends GetView<HomeController> {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors().pink,
        title: const Text(
          "TIME LAB",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
        leading: BackButton(color: GlobalColors().pink,),
        actions: [
          Padding(
              padding: EdgeInsetsDirectional.only(start: 34, end: 34),
              child: IconButton(
                icon: Icon(FontAwesomeIcons.comment),
                onPressed: () {
                  Get.toNamed(Routes.chatListPage);
                },
                color: Colors.white,
              ))
        ],
        centerTitle: true,
        automaticallyImplyLeading: true,
        toolbarHeight: 114,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(00),
              bottomRight: Radius.circular(30)),
        ),
      ),
      body: GetBuilder<HomeController>(builder: (controller) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 30, end: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: GlobalColors().pink,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsetsDirectional.only(start: 3, end: 3),
                          child: Padding(
                            padding: EdgeInsetsDirectional.all(3),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // cabeçalho
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Adicione um comentario!!!"),
                                        IconButton(
                                          color: Colors.white,
                                          icon: const Icon(
                                            FontAwesomeIcons.plus,
                                            size: 30,
                                          ),
                                          onPressed: () {
                                            MoreTimeLineController().onClose();
                                            Get.toNamed(Routes.moreTimeLine);
                                          },
                                        )
                                      ])
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  for (Tweet item in controller.tweets)
                    //item.imageUrl == null?
                    CardTimelineTexto(context, item.nomeUsuario, item.titulo!,
                        item.texto, item.imagem),
                ],
              ),
            ),
          ),
        );
      }),
      bottomNavigationBar: NavigationBarVozFemina(
        context: context,
        selectIndex: 1,
      ),
    );
  }
}
