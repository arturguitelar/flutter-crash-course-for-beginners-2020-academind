import 'package:flutter/material.dart';

// // main padrão
// void main() {
//   runApp(MyApp());
// }
// Se a função tem apenas uma expressão é possível usar
// uma espécie de "Arrow Function" (Como no javascript).
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            Text('A pergunta!'),
            RaisedButton(
              child: Text('Pergunta 1'),
              onPressed: null,
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
}
