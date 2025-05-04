import 'package:flutter/material.dart';
import 'package:new_structure/config/themes/text_style.dart';

class CustomRowSpanText extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomRowSpanText(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: text1,
          style: getRegularStyle(
            fontSize: 15,
            color: Theme.of(context).colorScheme.primary,
          ),
          children: [
            TextSpan(
              text: text2,
              style: getMediumStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
