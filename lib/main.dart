import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int listIndex = 0;

  void test() {
    setState(() {
      print(listIndex);

      if (listIndex < _questions.length - 1)
        listIndex++;
      else
        listIndex = 0;
    });
  }

  List<Map<String, dynamic>> _questions = [
    {
      "questionText": "What's your favourite starter pokemon?",
      "answers": [
        "Balbasaur",
        "Charmander",
        "Squirtle",
      ]
    },
    {
      "questionText": "What's your favourite color?",
      "answers": [
        "Green",
        "Red",
        "Blue",
      ]
    },
    {
      "questionText": "Which one of the following expresses you more?",
      "answers": [
        "Grass",
        "Fire",
        "Water",
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyFirstApp"),
        ),
        body: Column(children: [
          Question(_questions[listIndex]["questionText"]),
          ...(_questions[listIndex]["answers"] as List<String>)
              .map((answer) => Answer(
                    () => test(),
                    answer,
                  )),
        ]),
      ),
    );
  }
}
