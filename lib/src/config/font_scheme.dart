import 'package:flutter/material.dart';

class CustomFontScheme extends StatelessWidget {
  final String text;
  late final TextStyle? Function(BuildContext context)? fontStyle;

  CustomFontScheme.headline5({Key? key, required this.text}) : super(key: key) {
    fontStyle = (context) {
      return Theme.of(context).textTheme.headline5;
    };
  }

  CustomFontScheme.headline6({Key? key, required this.text}) : super(key: key) {
    fontStyle = (context) {
      return Theme.of(context).textTheme.headline6;
    };
  }

  CustomFontScheme.bodyText1({Key? key, required this.text}) : super(key: key) {
    fontStyle = (context) {
      return Theme.of(context).textTheme.bodyText1;
    };
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: fontStyle?.call(context),
    );
  }
}
