class Tweet {
  final String nomeUsuario;
  final String? titulo;
  final String texto;
  final String imagem;
  final String? link;
  final int curtidas;
  final int retweets;
  final int visualizacoes;

  Tweet({
    required this.nomeUsuario,
    required this.imagem,
    required this.texto,
    required this.titulo,
    this.link,
    this.curtidas = 0,
    this.retweets = 0,
    this.visualizacoes = 0,
  });
}
