import 'package:flutter/material.dart';
import './examen.dart';
import './resultado.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indicePreguntas = 0;
  var _puntajeTotal = 0;

  void _responderPregunta(int puntaje) {
    setState(() {
      _indicePreguntas += 1;
    });
    _puntajeTotal += puntaje;
    print(_indicePreguntas);
  }

  void _resetearExamen() {
    setState(() {
      _indicePreguntas = 0;
      _puntajeTotal = 0;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const preguntas = [
      {
        "pregunta": "¿Cual es tu color favorito?",
        "respuestas": [
          {"texto": "Negro", "puntaje": 10},
          {"texto": "Rojo", "puntaje": 8},
          {"texto": "Blanco", "puntaje": 6}
        ]
      },
      {
        "pregunta": "¿Cual es tu animal favorito?",
        "respuestas": [
          {"texto": "Perro", "puntaje": 15},
          {"texto": "Gato", "puntaje": 18},
          {"texto": "Toro", "puntaje": 20}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Primera app'),
        ),
        body: _indicePreguntas < preguntas.length
            ? Examen(preguntas, _responderPregunta, _indicePreguntas)
            : Resultado(_puntajeTotal, _resetearExamen),
      ),
    );
  }
}
