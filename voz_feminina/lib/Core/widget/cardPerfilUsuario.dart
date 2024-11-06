import 'package:flutter/material.dart';

Row cardPerfilUsuarioDados(
    BuildContext context, IconData icone, String nomeUsuario) {
  return Row(
    children: [
      Icon(icone as IconData?),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 5,),
          Text("Nome do Usuario:"),
          Text(nomeUsuario),
        ],
      )
    ],
  );
}
