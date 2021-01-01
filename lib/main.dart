import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'question': 'Qual é a sua cor favorita?',
      'answers': ['Preto', 'Vermelho', 'Verde', 'Azul', 'Branco']
    },
    {
      'question': 'Qual é o seu animal favorito?',
      'answers': ['Cachorro', 'Gato', 'Leão', 'Tigre', 'Cavalo', 'Galinha']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Um titulo para o App aqui')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                )
              : Result(),
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('No more questions!');
    }
  }
}
