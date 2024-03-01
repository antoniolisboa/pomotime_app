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

  TextStyle selectedModeTextStyle = TextStyles.bold.copyWith(
    shadows: [
      const Shadow(
        offset: Offset(0, 4),
        blurRadius: 25,
        color: AppColors.spaceCadet,
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
          style: pomodoroButtonStyle(),
          child: generatePomodoroButtonText(
            'short break',
            _isShortBreakButton,
          ),
        ),
        
        const SizedBox(width: 12),
        pomodoroButton(
          text: 'pomodoro',
          isPressed: _isPomodoroButton,
          typeTimer: TypeTimer.pomodoro,
        ),
        const SizedBox(width: 12),
        pomodoroButton(
          text: 'long break',
          isPressed: _isLongBreakeButton,
          typeTimer: TypeTimer.longBreak,
        ),
      ],
    );
  }

  Text generatePomodoroButtonText(String text, bool isPressed) {
    return Text(
      text,
      style: (isPressed) ? selectedModeTextStyle : TextStyles.regular,
    );
  }

  TextButton pomodoroButton(
      {required String text,
      required bool isPressed,
      required TypeTimer typeTimer}) {
    return TextButton(
      onPressed: () {
        selectTimerMode(typeTimer);
      },
      style: pomodoroButtonStyle(),
      child: generatePomodoroButtonText(
        text,
        isPressed,
      ),
    );
  }

  ButtonStyle pomodoroButtonStyle() {
    return TextButton.styleFrom(
      backgroundColor: AppColors.transparent,
      foregroundColor: AppColors.white,
      disabledBackgroundColor: AppColors.transparent,
      disabledForegroundColor: AppColors.transparent,
      enableFeedback: false,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      splashFactory: NoSplash.splashFactory,
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
