import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolc_quiz_app/src/config/color_scheme.dart';
import 'package:poolc_quiz_app/src/screens/controllers/quiz_controller.dart';

class NextQuizButton extends StatelessWidget {
  const NextQuizButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<QuizController>(
        init: QuizController(),
        builder: (quizController) {
          return Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  quizController.nextQuiz();
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(size.height * .02),
                  decoration: BoxDecoration(
                    color: quizController.isAnswer
                        ? CustomColorscheme.focusColor
                        : CustomColorscheme.shadowColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '다음',
                    style: Theme.of(context).textTheme.button?.copyWith(
                        color: quizController.isAnswer
                            ? CustomColorscheme.fontColor
                            : Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
