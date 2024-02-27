import 'package:flutter/material.dart';
import 'package:pomotime_app/util/text_styles.dart';

class PomodoroButtonGrup extends StatelessWidget {
  const PomodoroButtonGrup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            print('Otário');
          },
          child: Text(
            'short break',
            style: TextStyles.regular,
          ),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {
            print('Otário');
          },
          child: Text(
            'pomodoro',
            style: TextStyles.regular,
          ),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {
            print('Otário');
          },
          child: Text(
            'long break',
            style: TextStyles.regular,
          ),
        ),
      ],
    );
  }
}
