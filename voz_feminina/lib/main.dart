import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:voz_feminina/Page/Login/login_bindings.dart';
import 'package:voz_feminina/routes/routes.dart';
import 'package:voz_feminina/routes/routes_page.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Voz Feminina',
    debugShowCheckedModeBanner: false,
    initialBinding: LoginBindings(),
    initialRoute: Routes.loginPage,
    getPages: RoutePage.pages,
    locale: const Locale('pt', 'br'),
    themeMode: ThemeMode.light,
    
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
}
