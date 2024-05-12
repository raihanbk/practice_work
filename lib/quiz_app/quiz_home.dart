import 'package:flutter/material.dart';
import 'package:flutterfeb/quiz_app/data/quiz_data.dart';
import 'package:flutterfeb/quiz_app/model/quiz_model.dart';

class QuizHome extends StatefulWidget {
  const QuizHome({super.key});

  @override
  State<QuizHome> createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  PageController controller = PageController();
  int currentPage = 0;
  late List<String?> userAnswer;

  @override
  void initState() {
    userAnswer = List.filled(quizModel.length, null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller,
        itemCount: quizModel.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(quizModel[index].question),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(quizModel[index].options.length,
                    (optionIndex) {
                  String option = quizModel[index].options[optionIndex];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        userAnswer[index] = option;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RadioListTile<String>(
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        selected: true,
                        title: Text(option),
                        value: option,
                        groupValue: userAnswer[index],
                        onChanged: (value) {
                          setState(() {
                            userAnswer[index] = value;
                          });
                        },
                        selectedTileColor:
                            userAnswer[index] == quizModel[index].correctAnswer
                                ? Colors.green
                                : Colors.red,
                        // activeColor: Colors.green,
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (index < quizModel.length - 1) {
                      controller.nextPage(
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease);
                    } else {
                      int correctAns = 0;
                      for (int i = 0; i < quizModel.length; i++) {
                        if (userAnswer[i] == quizModel[i].correctAnswer) {
                          correctAns++;
                        }
                      }
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Result'),
                              content: Text(
                                  "You got $correctAns correct answers out of ${quizModel.length} questions"),
                              actions: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => const QuizHome()),
                                          (route) => false);
                                    },
                                    icon: const Icon(Icons.close))
                              ],
                            );
                          });
                    }
                  },
                  child: Text(index < quizModel.length - 1 ? 'Next' : 'Submit'))
            ],
          );
        },
      ),
    );
  }
}
