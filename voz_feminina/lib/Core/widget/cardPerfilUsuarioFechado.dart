import 'package:flutter/material.dart';

Row cardPerfilUsuarioDadosFechado(BuildContext context, IconData icone,
    String nomeCampo, String nomeUsuario) {
  return Row(
    children: [
      Icon(icone as IconData?, color: Colors.white),
      SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 35,
          ),
          Text(nomeCampo, style: TextStyle(color: Colors.white)),
          Text(
            nomeUsuario,
            style: TextStyle(color: Colors.white),
          )
        ],
      )
    ],
  );
}
