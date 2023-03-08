import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:poolc_quiz_app/src/models/quiz_model.dart';

class QuizController extends GetxController {
  late PageController _pageController;

  PageController get pageController => _pageController;

  bool _isAnswer = false;

  bool get isAnswer => _isAnswer;

  late int _correctAnsIndex;

  int get correctAnsIndex => _correctAnsIndex;

  late int _selectAnsIndex;

  int get selectAnsIndex => _selectAnsIndex;

  RxInt _quizNum = 1.obs;

  RxInt get quizNum => _quizNum;

  int _score = 0;

  int get score => _score;

  List<QuizModel> _quizList = poolcQuiz
      .map((quiz) => QuizModel(
          id: quiz['id'],
          question: quiz['question'],
          correctIndex: quiz['correctIndex'],
          answerList: quiz['answerList']))
      .toList();

  List<QuizModel> get quizList => _quizList;

  void onInit() {
    _pageController = PageController();
    super.onInit();
  }

  void onClose() {
    _pageController.dispose();
    super.onClose();
  }

  void checkIsCorrect(QuizModel quizModel, int selectAnsIndex) {
    _isAnswer = true;
    _correctAnsIndex = quizModel.correctIndex;
    _selectAnsIndex = selectAnsIndex;

    if (_correctAnsIndex == _selectAnsIndex) _score++;
    update();

    Future.delayed(const Duration(milliseconds: 250), () {
      nextQuiz();
    });
  }

  void nextQuiz() {
    if (_quizNum.value != quizList.length) {
      _isAnswer = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 200), curve: Curves.ease);
    } else {
      Get.toNamed('/score');
    }
  }

  void incrementQuizNum(int index) {
    _quizNum.value = index + 1;
  }
}
