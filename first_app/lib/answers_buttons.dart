
import 'package:flutter/material.dart';



class AnswerButton extends StatelessWidget {
  const AnswerButton({
    required this.answerText, 
    required this.onTap, 
    super.key});

  final String answerText;
  final void Function() onTap;

 @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 42, 1, 49),
        foregroundColor: Colors.white,
        padding:  const EdgeInsets.symmetric(vertical: 10, horizontal: 40)
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );    
  }
}



  // ElevatedButton(
  //     onPressed: () {}, 
  //     style: ElevatedButton.styleFrom(),
  //     child: Text('Answer 2'),
  //   ),
  //   ElevatedButton(
  //     onPressed: () {}, 
  //     style: ElevatedButton.styleFrom(),
  //     child: Text('Answer 3'),
  //     ),