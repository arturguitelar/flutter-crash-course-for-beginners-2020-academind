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

  final questions = const [
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
          title: Text('Um titulo para o App aqui'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _questionIndex < questions.length
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Question(questions[_questionIndex]['question']),
                    ...(questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) => Answer(answer, _answerQuestion))
                        .toList(),
                  ],
                )
              : Center(
                  child: Text('Você conseguiu! :D'),
                ),
        ),
      ),
    );
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (_questionIndex < questions.length) {
      print('we have more questions!');
    } else {
      print('No more questions!');
    }
  }
}
