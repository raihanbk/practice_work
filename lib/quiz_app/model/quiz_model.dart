import 'package:flutterfeb/quiz_app/data/quiz_data.dart';

class QuizDataModel {
  final String question;
  final List options;
  final String correctAnswer;

  QuizDataModel(
      {required this.question,
      required this.options,
      required this.correctAnswer});
}

List<QuizDataModel> quizModel = quizQAndA
    .map((e) => QuizDataModel(
        question: e['question'],
        options: e['options'],
        correctAnswer: e['correctAnswer']))
    .toList();
