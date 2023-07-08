import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        ),
        onPressed: onTap,
        child: Text(textAlign: TextAlign.center, answerText));
  }
}
