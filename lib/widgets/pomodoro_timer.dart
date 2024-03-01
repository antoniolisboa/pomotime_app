import 'package:flutter/material.dart';
import 'package:pomotime_app/util/app_colors.dart';
import 'package:pomotime_app/util/text_styles.dart';

class PomodoroTimer extends StatelessWidget {
  const PomodoroTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.snow,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.spaceCadet,
          width: 1,
        ),
      ),
      child: Text(
        '5:00',
        style: TextStyles.regular.copyWith(
          fontSize: 28,
        ),
      ),
    );
  }
}
