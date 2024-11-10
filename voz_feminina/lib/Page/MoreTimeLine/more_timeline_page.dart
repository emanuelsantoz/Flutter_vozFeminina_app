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
    return Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
            ),
          ),
          toolbarHeight: 130,
          backgroundColor: GlobalColors().pink,
          leading: Padding(
            padding:
                const EdgeInsets.only(left: 10), // Adjust padding as needed
            child: Image.asset(
              "assets/img/fotoPerfil.png",
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 6.0), // Adjust padding as needed
            child: Text(
              "Ana Santos",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size(3, 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0), // Adjust padding as needed
              child: TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: "O que você esta pensando?",
                  hintStyle: const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      60,
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
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
                  const Text("Adicionar Elementos Visuais:", style: TextStyle(fontWeight: FontWeight.w500),),
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
                          child: Column(
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
            child: IconButton(
              icon: Icon(
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
              onPressed: () {},
            ),
            padding: EdgeInsets.only(bottom: 34)));
  }
}
