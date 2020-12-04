import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Um titulo para o App aqui'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Pergunta 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Pergunta 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Pergunta 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }
}
