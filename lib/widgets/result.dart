import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result({
    Key key,
    @required this.resultScore,
    @required this.resetHandler,
  }) : super(key: key);

  String get resultPhrase {
    if (resultScore <= 8) {
      return 'Poucos pontos...\nTente melhorar.';
    } else if (resultScore <= 16) {
      return 'Quase lá...\nFalta pouco!';
    }
    return 'Você conseguiu! :D';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  spreadRadius: 10,
                ),
                BoxShadow(
                  color: Colors.deepOrange,
                  offset: Offset(5, 5),
                ),
                BoxShadow(
                  color: Colors.amberAccent,
                  offset: Offset(-5, -5),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset.zero,
                ),
              ],
            ),
            child: Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(top: 8),
            child: FlatButton(
              color: Colors.cyan[100],
              onPressed: resetHandler,
              child: Text(
                'Voltar ao início.',
                style: TextStyle(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
