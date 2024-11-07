import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:voz_feminina/Core/colors.dart';
import 'package:voz_feminina/routes/routes.dart';

class ChatPage extends GetView<ChatPage> {
  // ignore: non_constant_identifier_names
  ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors().second,
        title: const Text(
          'TIME LAB',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
              padding: const EdgeInsetsDirectional.only(start: 34, end: 34),
              child: IconButton(
                icon: const Icon(FontAwesomeIcons.comment),
                onPressed: () {
                  Get.toNamed(Routes.chatListPage);
                },
                color: Colors.white,
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsDirectional.only(start: 30, end: 30),
            child: Column(),
          ),
        ),
      ),
    );
  }
}
