import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget {    
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

@override
  Widget build(context){
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(opacity: 0.5),
            Image.asset(
              'assets/images/qn_logos.png',
              width: 500,
              ),
          const SizedBox(height:80,),  
          const Text('Learn flutter the with fun way!',
            style: TextStyle(
            color: Colors.white,
            fontSize: 20.0
          ),
        ),
        const SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: startQuiz,         
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz',
            style: TextStyle(          
            color: Colors.white),))
      ]
    )
  );
 }
}


          