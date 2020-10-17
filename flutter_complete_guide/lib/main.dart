import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

/*void main()
 {
    runApp(MyApp()); 
 }*/
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Horse', 'score': 8},
        {'text': 'Cat', 'score': 5},
        {'text': 'Elephant', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Andrew Ng', 'score': 7},
        {'text': 'Dr. Nabeel', 'score': 5},
        {'text': 'Dr. Sefat Momen', 'score': 3},
        {'text': 'Dr. Naqueeb Imtiaz', 'score': 1},
      ],
    },
  ];
  var _totalScore = 0;
  
  void _resetQuiz()
  {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    if (_questionIndex < _questions.length) {}

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('Answer Chosen!');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
