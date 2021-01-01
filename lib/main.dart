import 'package:flutter/material.dart';

import 'widgets/quiz.dart';
import 'widgets/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'question': 'Qual é a sua cor favorita?',
      'answers': [
        {'text': 'Preto', 'score': 10},
        {'text': 'Vermelho', 'score': 8},
        {'text': 'Verde', 'score': 6},
        {'text': 'Azul', 'score': 4},
        {'text': 'Branco', 'score': 2},
      ]
    },
    {
      'question': 'Qual é o seu animal favorito?',
      'answers': [
        {'text': 'Cachorro', 'score': 12},
        {'text': 'Gato', 'score': 10},
        {'text': 'Leão', 'score': 8},
        {'text': 'Tigre', 'score': 6},
        {'text': 'Cavalo', 'score': 4},
        {'text': 'Galinha', 'score': 2},
      ]
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
              : Result(resultScore: _totalScore),
        ),
      ),
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
