import 'package:flutter/material.dart';
import 'package:pomotime_app/util/app_colors.dart';
import 'package:pomotime_app/util/text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: AppColors.spaceCadet,
        child: Text(
          style: TextStyles.regular.copyWith(
            color: AppColors.snow,
            fontSize: 28,
          ),
          'PomoTime',
        ),
      ),
    );
  }
}
