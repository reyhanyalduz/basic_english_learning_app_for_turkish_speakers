import 'package:flutter/material.dart';
import 'questions2.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "App",
  home: Unit2Quiz(),
),);

class Unit2Quiz extends StatelessWidget {
  const Unit2Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          /*
          appBar: AppBar(
            leading: BackButton(),
            title: Text('UNIT1-QUIZ',),
            backgroundColor: Color.fromRGBO(149, 190, 255, 1),
          ),
           */

            appBar:AppBar(
              backgroundColor: Color.fromRGBO(65, 125, 196, 1.0),
              leading: BackButton(
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text('Unit2-Quiz'),
            ),
            backgroundColor: Color.fromRGBO(218, 239, 255, 1.0),
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal:10.0),
                  child: Unit1QuizPage(),
                )
            )
        )
    );
  }
}

class Unit1QuizPage extends StatefulWidget {
  @override
  State<Unit1QuizPage> createState() => _Unit1QuizPageState();
}

class _Unit1QuizPageState extends State<Unit1QuizPage> {
  void checkAnswer( bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (userPickedAnswer == correctAnswer) {
        print('user got it right');
        scoreKeeper.add(
          Icon(Icons.check, color: Colors.green),
        );
      } else {
        print('user got it wrong');

        scoreKeeper.add(
          Icon(Icons.close, color: Colors.red),
        );
      }
      quizBrain.nextQuestion();
    });
  }




  List<Icon> scoreKeeper = [];


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                //questions.first,
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromRGBO(0, 0, 0, 1.0)
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: GestureDetector(
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              onTap: () {
                //bool correctAnswer= quizBrain.questionBank[questionNumber].questionAnswer;
                checkAnswer(true);

              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: GestureDetector(
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              onTap: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}

