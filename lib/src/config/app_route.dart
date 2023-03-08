import 'package:get/get.dart';
import 'package:poolc_quiz_app/src/screens/home/home_screen.dart';
import 'package:poolc_quiz_app/src/screens/quiz/quiz_screen.dart';
import 'package:poolc_quiz_app/src/screens/score/score_screen.dart';

final List<GetPage> routes = [
  GetPage(
      name: '/home',
      page: () => const HomeScreen(),
      transition: Transition.zoom),
  GetPage(
      name: '/quiz',
      page: () => const QuizScreen(),
      transition: Transition.upToDown),
  GetPage(
      name: '/score',
      page: () => const ScoreScreen(),
      transition: Transition.fade),

];