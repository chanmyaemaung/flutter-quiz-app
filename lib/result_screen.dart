import 'package:flutter/material.dart';
import 'package:quiz_app/play_quiz_screen.dart';

import 'const.dart';

class ResultScreen extends StatelessWidget {
  int correctAnswers, wrongAnswers;

  ResultScreen({
    Key? key,
    required this.correctAnswers,
    required this.wrongAnswers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: backgroundColor),
        backgroundColor: foregroundColor,
        title: Text(
          "Result",
          style: TextStyle(color: backgroundColor),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answerTab("Correct Answers", correctAnswers),
                answerTab("Wrong Answers", wrongAnswers),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => PlayQuizScreen()),
                      (route) => false);
                },
                style: ElevatedButton.styleFrom(primary: foregroundColor),
                child: Text(
                  "Reset Quiz",
                  style: TextStyle(
                    color: backgroundColor,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget answerTab(String title, int value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          "$value",
          style: TextStyle(
            color: foregroundColor,
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
