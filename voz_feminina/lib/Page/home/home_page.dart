import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:voz_feminina/Core/colors.dart';
import 'package:voz_feminina/Core/widget/cardTimeLineImagem.dart';
import 'package:voz_feminina/Core/widget/cardTimeLineTexto.dart';
import 'package:voz_feminina/Core/widget/navigationBar.dart'; // Assuming NavigationBarVozFemina is a custom widget
import 'package:voz_feminina/Page/home/home_controller.dart';
import 'package:voz_feminina/routes/routes.dart';

class HomePage extends GetView<HomeController> {
  HomePage({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                CardTimelineTexto(),
                Divider(color: Colors.grey[300], height: 3),
                CardTimelineTexto(),
                Divider(color: Colors.grey[300], height: 3),
                CardTimelineImagem()
              ],
            ),
          ),
        ),
      ),

      //  ListView.builder(
      //     itemCount: controller.tweets.length,

      //     itemBuilder: (context, index) {
      //       final tweet = controller.tweets[index];
      //       return ListTile(
      //         leading: CircleAvatar(
      //           backgroundImage: NetworkImage(tweet.imagem ?? ''),
      //         ),

      //         title: Text('Name @${tweet.handle} °0m'),
      //         subtitle: Text(tweet.texto),
      //         trailing: Text('${tweet.curtidas} ❤️'),

      //       );
      //     },
      //   ),
      bottomNavigationBar: NavigationBarVozFemina(
          context: context,
          selectIndex: 1), // Assuming NavigationBarVozFemina handles selection
    );
  }
}
