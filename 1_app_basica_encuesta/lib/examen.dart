import 'package:flutter/material.dart';
import './pregunta.dart';
import './respuesta.dart';

class Examen extends StatelessWidget {
  final List<Map<String, Object>> preguntas;
  final Function responderPregunta;
  final int indicePreguntas;
  Examen(this.preguntas, this.responderPregunta, this.indicePreguntas);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pregunta(preguntas[indicePreguntas]["pregunta"]),
        ...(preguntas[indicePreguntas]["respuestas"] as List<Map<String,Object>>)
            .map((pregunta) {
          return Respuesta(() => responderPregunta(pregunta["puntaje"]), pregunta["texto"]);
        }).toList()
      ],
    );
  }
}
