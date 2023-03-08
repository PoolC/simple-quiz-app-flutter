import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:poolc_quiz_app/src/config/app_route.dart';
import 'package:poolc_quiz_app/src/config/color_scheme.dart';
import 'package:poolc_quiz_app/src/config/constants.dart';
import 'package:poolc_quiz_app/src/screens/controllers/quiz_controller.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    QuizController controller = Get.put(QuizController());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(Constants.background, fit: BoxFit.cover),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: size.width * .8,
                    height: 400,
                    margin: EdgeInsets.symmetric(
                        horizontal: size.width * .02,
                        vertical: size.height * .02),
                    padding: EdgeInsets.all(size.height * .02),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '퀴즈 결과',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircularStepProgressIndicator(
                              totalSteps: 5,
                              currentStep: controller.score,
                              stepSize: 15,
                              selectedColor: CustomColorscheme.primaryColor,
                              unselectedColor: CustomColorscheme.focusColor,
                              padding: 0,
                              roundedCap: (_, __) => true,
                              width: 170,
                              height: 170,
                            ),
                            Text(
                              '${controller.score}점',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: controller.score == 5
                                      ? Image.asset(Constants.resIconSuccess)
                                      : Image.asset(Constants.resIconDefault)),
                              const SizedBox(
                                width: 10,
                              ),
                              controller.score == 5
                                  ? Text('축하드려요~!',
                                      style:
                                          Theme.of(context).textTheme.headline6)
                                  : Text('아쉬워요ㅠㅠ',
                                      style:
                                          Theme.of(context).textTheme.headline6)
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed('/home');
                          },
                          child: Container(
                            width: size.width * .7,
                            height: 60,
                            margin: const EdgeInsets.only(top: 20),
                            padding: EdgeInsets.all(size.height * .02),
                            decoration: BoxDecoration(
                                color: CustomColorscheme.focusColor,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: CustomColorscheme.focusColor,
                                    width: 1.7)),
                            child: Text(
                              '홈으로 돌아가기',
                              style: Theme.of(context).textTheme.headline6,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
