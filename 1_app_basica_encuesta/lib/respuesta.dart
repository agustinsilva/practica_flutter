import 'package:flutter/material.dart';

class Respuesta extends StatelessWidget {

  final Function selectHandler;
  final String textoRespuesta;

  Respuesta(this.selectHandler,this.textoRespuesta);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(this.textoRespuesta),
          onPressed: selectHandler,
        ));
  }
}
