import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_question_model.dart';

const backgroundColor = Color.fromRGBO(45, 27, 31, 1);
const foregroundColor = Color.fromRGBO(244, 140, 6, 1);

List<QuickQuestionModel> quizQuestions = [
  QuickQuestionModel(
    question: "1. JSON stands for ",
    correctAnswer: "Javascript Object Notation",
    options: [
      "Java Standard Output Network",
      "Javascript Object Notation",
      "Javascript Output Name",
      "Java Source Open Network"
    ],
  ),
  QuickQuestionModel(
      question: "2. Which of the following is not a type in JSON?",
      correctAnswer: "date",
      options: ["date", "Object", "Array", "string"])
];
