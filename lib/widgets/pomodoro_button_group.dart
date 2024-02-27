import 'package:flutter/material.dart';
import 'package:pomotime_app/util/app_colors.dart';
import 'package:pomotime_app/util/text_styles.dart';

enum TypeTimer {
  shortBreak,
  pomodoro,
  longBreak,
}

class PomodoroButtonGrup extends StatefulWidget {
  const PomodoroButtonGrup({super.key});

  @override
  State<PomodoroButtonGrup> createState() => _PomodoroButtonGrupState();
}

class _PomodoroButtonGrupState extends State<PomodoroButtonGrup> {
  bool _isShortBreakButton = false;
  bool _isPomodoroButton = true;
  bool _isLongBreakeButton = false;

  TextStyle selectedModeText = TextStyles.bold.copyWith(
    shadows: [
      const Shadow(
        offset: Offset(0, 6),
        blurRadius: 60,
        color: AppColors.primaryColor,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            selectTimerMode(TypeTimer.shortBreak);
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            enableFeedback: false,
          ),
          child: generatePomodoroButtonText(
            'short break',
            _isShortBreakButton,
          ),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {
            selectTimerMode(TypeTimer.pomodoro);
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            enableFeedback: false,
          ),
          child: generatePomodoroButtonText(
            'pomodoro',
            _isPomodoroButton,
          ),
        ),
        const SizedBox(width: 12),
        TextButton(
          onPressed: () {
            selectTimerMode(TypeTimer.longBreak);
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            enableFeedback: false,
          ),
          child: generatePomodoroButtonText(
            'long break',
            _isLongBreakeButton,
          ),
        ),
      ],
    );
  }

  Text generatePomodoroButtonText(String text, bool isOn) {
    return Text(
      text,
      style: (isOn) ? selectedModeText : TextStyles.regular,
    );
  }

  void selectTimerMode(TypeTimer typeTimer) {
    setState(() {
      if (typeTimer == TypeTimer.shortBreak) {
        _isShortBreakButton = true;
        _isPomodoroButton = false;
        _isLongBreakeButton = false;
      } else if (typeTimer == TypeTimer.longBreak) {
        _isShortBreakButton = false;
        _isPomodoroButton = false;
        _isLongBreakeButton = true;
      } else {
        _isShortBreakButton = false;
        _isPomodoroButton = true;
        _isLongBreakeButton = false;
      }
    });
  }
}
