import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int resultadoTotal;
  final Function resetearExamen;

  Resultado(this.resultadoTotal, this.resetearExamen);

  String get fraseFinal {
    String texto = "Terminaste!";
    if (resultadoTotal <= 8) {
      texto = "Sos genial e inocente!";
    } else if (resultadoTotal <= 12) {
      texto = "Sos agradable!";
    } else if (resultadoTotal <= 16) {
      texto = "Sos un tipo extraño!";
    } else {
      texto = "Sos malo!";
    }
    return texto;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            fraseFinal,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Resetear examen!"),
            onPressed: resetearExamen,
          )
        ],
      ),
    );
  }
}
