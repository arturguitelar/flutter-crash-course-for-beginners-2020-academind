import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'question': 'Qual é a sua cor favorita?',
        'answers': ['Preto', 'Vermelho', 'Verde', 'Azul', 'Branco']
      },
      {
        'question': 'Qual é o seu animal favorito?',
        'answers': ['Cachorro', 'Gato', 'Leão', 'Tigre', 'Cavalo', 'Galinha']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Um titulo para o App aqui'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(answer, _answerQuestion))
                .toList(),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }
}
