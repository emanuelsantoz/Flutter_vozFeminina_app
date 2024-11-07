import 'package:get/get.dart';
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
    Tweet(nomeUsuario: "João Santos", handle: "asdasdf", texto: "Olá mundo"),
    Tweet(
        nomeUsuario: "Maria Aparecida", handle: "asdasdf", texto: "Teste 123"),
    Tweet(
        nomeUsuario: "Gustavo",
        handle: "asdasdf",
        texto: "Globo a gente se liga em vc"),
    Tweet(nomeUsuario: "Camily", handle: "asdasdf", texto: "Salve gostos"),
    Tweet(nomeUsuario: "Leona", handle: "asdasdf", texto: "sofiaaa"),
  ];

  List<Tweet> get tweets => _tweets;

  void addTweet(Tweet tweet) {
    _tweets.add(tweet);
    update(); // Inform the UI about the change
  }
}
