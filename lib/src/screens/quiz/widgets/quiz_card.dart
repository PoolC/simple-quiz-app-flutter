import 'package:flutter/material.dart';
import 'package:poolc_quiz_app/src/models/quiz_model.dart';
import 'package:poolc_quiz_app/src/screens/controllers/quiz_controller.dart';
import 'package:get/get.dart';
import 'package:poolc_quiz_app/src/screens/quiz/widgets/answer_card.dart';
import 'package:poolc_quiz_app/src/screens/quiz/widgets/next_quiz_button.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizCard extends StatelessWidget {
  final QuizModel quizModel;

  const QuizCard({Key? key, required this.quizModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.put(QuizController());
    Size size = MediaQuery
        .of(context)
        .size;
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: size.width * .11, vertical: 5),
          child: Obx(() =>
              StepProgressIndicator(
                totalSteps: 5,
                currentStep: controller.quizNum.value,
                size: 6,
                selectedColor: Colors.white,
                unselectedColor: Colors.white38,
                roundedEdges: const Radius.circular(25),
              ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width * .02, vertical: size.height * .02),
            padding: EdgeInsets.all(size.height * .02),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Obx(
                          () =>
                          Text(
                            'QUESTION ${controller.quizNum.value} OF 5',
                            style: Theme
                                .of(context)
                                .textTheme
                                .subtitle2,
                          )
                  ),
                ),
                Text(quizModel.question,
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline6),
                const SizedBox(
                  height: 5,
                ),
                ...List.generate(
                    quizModel.answerList.length,
                        (index) =>
                        AnswerCard(
                            ansIndex: index,
                            ansText: quizModel.answerList[index],
                            onTap: () =>
                                controller.checkIsCorrect(quizModel, index))),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
