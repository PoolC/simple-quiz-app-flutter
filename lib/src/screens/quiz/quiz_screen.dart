import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:poolc_quiz_app/src/config/color_scheme.dart';
import 'package:poolc_quiz_app/src/config/constants.dart';
import 'package:poolc_quiz_app/src/models/quiz_model.dart';
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
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.transparent,
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .02),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * .11, vertical: 5),
                child: StepProgressIndicator(
                  totalSteps: 5,
                  currentStep: 1,
                  size: 6,
                  selectedColor: Colors.white,
                  unselectedColor: Colors.white38,
                  roundedEdges: Radius.circular(25),
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
                        child: Text(
                          'QUESTION 1 OF 5',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ),
                      Text(quizList[0].question,
                          style: Theme.of(context).textTheme.headline6),
                      const SizedBox(
                        height: 5,
                      ),
                      answerCard(size, 0, 0),
                      answerCard(size, 0, 1),
                      answerCard(size, 0, 2),
                      answerCard(size, 0, 3),
                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: quizButton(size, 0),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget answerCard(Size size, int id, int ansIdx) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(size.height * .02),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: CustomColorscheme.focusColor, width: 1.7)),
      child: Text(
        quizList[id].answerList[ansIdx],
      ),
    );
  }

  Widget quizButton(Size size, int id) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(size.height * .02),
      decoration: BoxDecoration(
        color: CustomColorscheme.shadowColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        '다음',
        style: Theme.of(context).textTheme.button,
        textAlign: TextAlign.center,
      ),
    );
  }
}
