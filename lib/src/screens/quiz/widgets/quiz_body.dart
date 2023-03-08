import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolc_quiz_app/src/models/quiz_model.dart';
import 'package:poolc_quiz_app/src/screens/controllers/quiz_controller.dart';
import 'package:poolc_quiz_app/src/screens/quiz/widgets/quiz_card.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizBody extends StatelessWidget {
  const QuizBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.put(QuizController());
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .02),
              child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  onPageChanged: controller.incrementQuizNum,
                  itemCount: controller.quizList.length,
                  itemBuilder: (context, index) {
                    return QuizCard(
                      quizModel: controller.quizList[index],
                    );
                  }))),
    );
  }
}
