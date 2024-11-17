import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:voz_feminina/Core/model/time_line.dart';

class ChatListController extends GetxController {
  RxBool isLoading = true.obs;

  @override
  void onInit() async {
    super.onInit();
    isLoading.value = true;

    isLoading.value = false;
  }

  final List<Tweet> _tweets = [
    Tweet(
        nomeUsuario: "Sofia Borges",
        titulo: "",
        texto: "Oi amiga!!",
        imagem: "assets/img/fotoPerfil1.png"),
    Tweet(
        nomeUsuario: "Samara De Jesus",
        texto: "Cê já foi no bambu?",
        titulo: "",
        imagem: "assets/img/fotoPerfil2.png"),
    Tweet(
        nomeUsuario: "Leh Silva",
        texto: "Ce já leu terminou meu livro?",
        titulo: "",
        imagem: "assets/img/fotoPerfil3.png"),
    Tweet(
        nomeUsuario: "Camily",
        texto: "Amigaaa cade vc?",
        titulo: "",
        imagem: "assets/img/fotoPerfil4.png"),
  ];

  List<Tweet> get tweets => _tweets;

  void addTweet(Tweet tweet) {
    _tweets.add(tweet);
    update(); // Inform the UI about the change
  }

  SalvarNomeChatList(nome, msg) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("chatName", nome);
    prefs.setString("ultimaMsg", msg);
  }
}
