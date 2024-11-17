import 'package:get/get.dart';
import 'package:voz_feminina/Core/model/time_line.dart';
import 'package:voz_feminina/routes/routes.dart';

class HomeController extends GetxController {
  RxBool isLoading = true.obs;
  List<Tweet> get tweets => _tweets;

  @override
  void onInit() async {
    super.onInit();
    isLoading.value = true;

    isLoading.value = false;
  }

  final List<Tweet> _tweets = [
    Tweet(
        nomeUsuario: "Gih",
        titulo:"BABUM",
        texto: "A comida do bambu é muito boa",
        imagem: "assets/img/fotoPerfil1.png"),
    Tweet(
        nomeUsuario: "Vih",
        titulo:"UBER",
        texto: "O Uber do pedrinho é seguro meninas",
        imagem: "assets/img/fotoPerfil4.png"),
    Tweet(
        nomeUsuario: "Camily",
        titulo:"FAMILIA",
        texto: "Meninas, vocês conhecem  algum lugar legal para sair com a familia?",
        imagem: "assets/img/fotoPerfil2.png"),
    Tweet(
        nomeUsuario: "Leona",
        titulo:"CONTRATANDO!!!",
        texto: "Estamos contrando mulheres!",
        imagem: "assets/img/fotoPerfil3.png"),
  ];

  void addTweet(Tweet tweet) {
    tweets.insert(0, tweet);
    update(); // Inform the UI about the change
  }
}
