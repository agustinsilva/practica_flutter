import 'package:flutter/material.dart';

class Pregunta extends StatelessWidget {
  final String textoPregunta;

  Pregunta(this.textoPregunta);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        textoPregunta,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
