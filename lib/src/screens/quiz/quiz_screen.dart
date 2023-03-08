import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poolc_quiz_app/src/config/color_scheme.dart';
import 'package:poolc_quiz_app/src/config/constants.dart';
import 'package:poolc_quiz_app/src/models/quiz_model.dart';
import 'package:poolc_quiz_app/src/screens/controllers/quiz_controller.dart';
import 'package:poolc_quiz_app/src/screens/quiz/widgets/quiz_body.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    QuizController quizController = Get.put(QuizController());
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 65,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: SizedBox(
            child: Image.asset(Constants.logoText),
            width: 80,
            height: 25,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close_rounded,
                    color: CustomColorscheme.fontColor,
                    size: 30,
                  )),
            )
          ],
        ),
        body: QuizBody());
  }
}
