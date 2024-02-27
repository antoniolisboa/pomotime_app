import 'package:pomotime_app/util/app_colors.dart';
import 'package:pomotime_app/util/text_styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          style: GoogleFonts.getFont(
            'Montserrat',
            color: const Color(0xFF1B1F3B),
            fontSize: 24,
          ),
          'PomoTime',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'English Studies',
            style: TextStyles.regular,
          ),
          const SizedBox(height: 54),
          Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.secondColor,
              shape: BoxShape.circle,
            ),
            child: Text(
              '5:00',
              style: TextStyles.regular.copyWith(
                fontSize: 28,
              ),
            ),
          ),
          const SizedBox(height: 82),
          Row(
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
          ),
          const SizedBox(height: 52),
          const PomoButton(),
        ],
      ),
    );
  }
}

class PomoButton extends StatefulWidget {
  const PomoButton({super.key});

  @override
  State<PomoButton> createState() => _PomoButtonState();
}

class _PomoButtonState extends State<PomoButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Otário');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1B1F3B),
        shape: const CircleBorder(),
      ),
      child: const Padding(
        padding: EdgeInsets.all(14.5),
        child: Icon(
          Icons.play_arrow_rounded,
          color: Color(0xFFFCF7F8),
          size: 38,
        ),
      ),
    );
  }
}
