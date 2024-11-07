import 'package:flutter/material.dart';

Row cardPerfilUsuarioDados(
    BuildContext context, IconData icone, String nomeCampo, String nomeUsuario) {
  return Row(
    children: [
      Icon(icone as IconData?),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 5,),
          Text(nomeCampo),
          Text(nomeUsuario),
        ],
      )
    ],
  );
}
