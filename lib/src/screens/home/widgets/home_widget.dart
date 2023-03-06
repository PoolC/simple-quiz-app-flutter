import 'package:flutter/material.dart';
import 'package:poolc_quiz_app/src/config/constants.dart';

Widget logoCenter() {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              image: const DecorationImage(
                  image: AssetImage(Constants.logoIcon), scale: 3),
              borderRadius: BorderRadius.circular(25)),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 110,
          height: 30,
          child: Image.asset(Constants.logoText),
        ),
      ],
    ),
  );
}

Widget quizStartButton(Size size, BuildContext context) {
  return InkWell(
    onTap: () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            height: size.height * .07,
            width: size.width * .85,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(bottom: 10),
            child: Center(
              child: Text(
                '퀴즈 시작하기!',
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
            )),
        Text(
          '퀴즈를 모두 맞히신 분께는 소정의 상품을 드려요',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 13),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    ),
  );
}
