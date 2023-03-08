import 'package:flutter/material.dart';
import 'package:poolc_quiz_app/src/config/color_scheme.dart';
import 'package:get/get.dart';
import 'package:poolc_quiz_app/src/models/quiz_model.dart';
import 'package:poolc_quiz_app/src/screens/controllers/quiz_controller.dart';

class AnswerCard extends StatelessWidget {
  final int ansIndex;
  final String ansText;
  final VoidCallback onTap;

  const AnswerCard({
    Key? key,
    required this.ansIndex,
    required this.ansText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // QuizController controller = Get.put(QuizController());
    Size size = MediaQuery.of(context).size;
    return GetBuilder<QuizController>(
        init: QuizController(),
        builder: (controller) {
          Color selectColor() {
            if (controller.isAnswer) {
              if (ansIndex == controller.selectAnsIndex) {
                return CustomColorscheme.focusColor;
              }
            }
            return Colors.transparent;
          }

          return InkWell(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(size.height * .02),
              decoration: BoxDecoration(
                  color: selectColor(),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: CustomColorscheme.focusColor, width: 1.7)),
              child: Text(
                ansText,
              ),
            ),
          );
        });
  }
}
