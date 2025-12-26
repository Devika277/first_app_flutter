import 'package:first_app/data/questions.dart';
import 'package:first_app/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_app/smart_screen.dart';
import 'package:first_app/data/questions.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  List<String> selectedAnswer =[];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);

    if(selectedAnswer.length == questions.length){
      setState(() {
        selectedAnswer =[];
        activeScreen = 'start-screen';
      });
    }
  }

//   Widget? activeScreen;

// @override
//   void initState() {
//     activeScreen =StartScreen(switchScreen);
//     super.initState();
//   }

  // void switchScreen(){
  //   setState(() { 

  //     activeScreen = const QuestionScreen();
  //   });
  // }


@override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen'){
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[
              Color.fromARGB(255, 62, 11, 182),
              Color.fromARGB(255, 45, 61, 206)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
          )          
          ),  
          child: activeScreen == 'start-screen' ? 
          StartScreen(switchScreen):
          QuestionScreen(onSelectAnswer: (String answer) {  },),
        ),
      ),
    );
  }
}