import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:voz_feminina/Page/Cadastro/cadastro_bindings.dart';
import 'package:voz_feminina/Page/Cadastro/cadastro_page.dart';
import 'package:voz_feminina/Page/Chat/chat_bindings.dart';
import 'package:voz_feminina/Page/Lista_chat/lista_chat_bindings.dart';
import 'package:voz_feminina/Page/Lista_chat/lista_chat_page.dart';
import 'package:voz_feminina/Page/Login/login_bindings.dart';
import 'package:voz_feminina/Page/Login/login_page.dart';
import 'package:voz_feminina/Page/Perfil/perfil_bindings.dart';
import 'package:voz_feminina/Page/Perfil/perfil_page.dart';
import 'package:voz_feminina/Page/Pesquisa/pesquisa_bindings.dart';
import 'package:voz_feminina/Page/Pesquisa/pesquisa_page.dart';
import 'package:voz_feminina/Page/home/home_bindings.dart';
import 'package:voz_feminina/Page/home/home_page.dart';
import 'package:voz_feminina/routes/routes.dart';

class RoutePage {
  static final pages = [
    // [ Login ]
    GetPage(
        name: Routes.loginPage,
        page: () => const LoginPage(),
        binding: LoginBindings()),
    // [ Cadastro ]
    GetPage(
        name: Routes.cadastroPage,
        page: () => CadastroPage(),
        binding: CadastroBindings()),
    // [ Home ]
    GetPage(
        name: Routes.homePage,
        page: () => HomePage(),
        binding: HomeBindings()),
    // [ Busca ]
    GetPage(
        name: Routes.pesquisaPage,
        page: () => PesquisaPage(),
        binding: PesquisaBindings()),
    // [ Home ]
    GetPage(
        name: Routes.perfilPage,
        page: () => PerfilPage(),
        binding: PerfilBindings()),
    // [ chatList ]
    GetPage(
        name: Routes.chatListPage,
        page: () => ChatListPage(),
        binding: ChatListBindings()),
    // [ chatList ]
    GetPage(
        name: Routes.chatPage,
        page: () => ChatListPage(),
        binding: ChatBindings()),
  ];
}