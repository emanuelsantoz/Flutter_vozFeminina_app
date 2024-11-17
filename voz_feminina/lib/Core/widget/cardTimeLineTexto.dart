import 'dart:math';

import 'package:flutter/material.dart';

Padding CardTimelineTexto(BuildContext context,
    String nomeUsuario, String titulo, String comentario, String fotoPerfil) {
  return Padding(
      padding: EdgeInsetsDirectional.only(start: 0, end: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            backgroundImage: AssetImage(fotoPerfil),
            maxRadius: 23,
          ),

          SizedBox(width: 15.0), // Spacing between icon and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '${nomeUsuario}',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    ' - ${pegaTempoMinutos()}m',
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '${titulo}',
                        style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
              Wrap(
                children: [
                  Text(
                    quebrarString(context, comentario),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                // Row for action icons
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30.0),
                  // Adjust spacing if needed

                  Row(
                    // First action icon and text
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.messenger_sharp,
                            size: 17.0, color: Color.fromARGB(164, 78, 73, 73)),
                      ),
                      Text("20", style: TextStyle(fontSize: 10.0)),
                    ],
                  ),

                  Row(
                    // Second action icon and text
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share,
                            size: 15.0, color: Color.fromARGB(164, 78, 73, 73)),
                      ),
                      Text("20", style: TextStyle(fontSize: 10.0)),
                    ],
                  ),

                  Row(
                    // Third action icon and text
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.bar_chart_rounded,
                            size: 15.0, color: Color.fromARGB(164, 78, 73, 73)),
                      ),
                      Text("20", style: TextStyle(fontSize: 10.0)),
                    ],
                  ),

                  IconButton(
                    // Fourth action icon without surrounding Row
                    onPressed: () {},
                    icon: Icon(
                      Icons.download,
                      size: 15.0,
                      color: Color.fromARGB(164, 78, 73, 73),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ));
}

int pegaTempoMinutos() {
  int agoraMinutis = DateTime.now().minute;
  return agoraMinutis;
}

String quebrarString(BuildContext context, String texto) {
  final larguraTela = MediaQuery.of(context).size.width;
  final tamanhoMaximo = _calcularTamanhoMaximo(larguraTela);

  List<String> linhas = [];
  String linhaAtual = '';

  for (String palavra in texto.split(' ')) {
    if (linhaAtual.length + palavra.length + 1 <= tamanhoMaximo) {
      linhaAtual += (linhaAtual.isEmpty ? '' : ' ') + palavra;
    } else {
      linhas.add(linhaAtual);
      linhaAtual = palavra;
    }
  }

  if (linhaAtual.isNotEmpty) {
    linhas.add(linhaAtual);
  }

  return linhas.join('\n');
}

int _calcularTamanhoMaximo(double larguraTela) {
  if (larguraTela <= 325) {
    return 25;
  } else if (larguraTela <= 380) {
    return 30;
  } else if (larguraTela <= 430) {
    return 35;
  } else {
    return 43;
  }
}