import 'package:flutter/material.dart';
import 'package:skiny/pages/Result.dart';
import '../model/QuestionsBank.dart';
import '../utils/const.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
      ),
      body: _index < 10
          ? Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Question ${_index + 1}",
                style: title,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                QuestionsBank.questions[_index].question,
                style: simlpleText,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(appBarColor)),
                      onPressed: () {
                        setState(() {
                          _index++;
                        });
                      },
                      child: const Text("OUI")),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(appBarColor)),
                      onPressed: () {
                        setState(() {
                          _index++;
                        });
                      },
                      child: const Text("NON"))
                ],
              )
            ])
          : const ResultPage(),
    );
  }
}
