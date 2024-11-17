import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:voz_feminina/Core/colors.dart';
import 'package:voz_feminina/Page/MoreTimeLine/more_timeline_controller.dart';

// ignore: must_be_immutable
class MoreTimeLinePage extends GetView<MoreTimeLineController> {
  MoreTimeLinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MoreTimeLineController>(builder: (controller){
      return  Scaffold( 
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
            ),
          ),
          toolbarHeight: 170,
          backgroundColor: GlobalColors().pink,
          leading: const Padding(
            padding:
                EdgeInsets.only(left: 3), // Adjust padding as needed
            child: CircleAvatar(backgroundImage: AssetImage("assets/img/minhaFotoPerfil.png"),),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 6.0), // Adjust padding as needed
            child: Text(
               controller.nomeUsuario,
              style:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size(1, 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0), // Adjust padding as needed
              child: Column(
                children: [
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    controller: controller.tituloInputMoreTimeLine,
                    decoration: InputDecoration(
                      hintText: "Titulo",
                      hintStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    controller: controller.inputMoreTimeLine,
                    decoration: InputDecoration(
                      hintText: "O que você esta pensando?",
                      hintStyle: const TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          30,
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Adicionar Elementos Visuais:",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                "Camera",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          height: 120,
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                              color: GlobalColors().pink,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.videocam,
                              color: Colors.white,
                              size: 30,
                            ),
                            Text(
                              "Vídeo",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        height: 120,
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                            color: GlobalColors().pink,
                            borderRadius: BorderRadius.circular(10)),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          height: 120,
                          alignment: AlignmentDirectional.center,
                          decoration: BoxDecoration(
                              color: GlobalColors().pink,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.photo_camera_back_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                "Galeria",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.gif,
                              color: Colors.white,
                              size: 60,
                            ),
                            Text(
                              "Gif",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        height: 120,
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                            color: GlobalColors().pink,
                            borderRadius: BorderRadius.circular(10)),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomSheet: Padding(
            padding: EdgeInsets.only(bottom: 34),
            child: IconButton(
              icon: const Icon(
                FontAwesomeIcons.paperPlane,
                size: 25,
                color: Colors.white,
              ),
              style: ButtonStyle(
                  padding:
                      WidgetStatePropertyAll(EdgeInsetsDirectional.all(25)),
                  backgroundColor: WidgetStatePropertyAll(
                    GlobalColors().pink,
                  )),
              onPressed: () {
                controller.criarUmNovoComentario(
                    controller.tituloInputMoreTimeLine.text,
                    controller.inputMoreTimeLine.text,
                    "assets/img/minhaFotoPerfil.png");
              },
            )));

    });   }
}
