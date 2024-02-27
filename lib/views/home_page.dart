import 'package:pomotime_app/widgets/media_control_button.dart';
import 'package:pomotime_app/util/text_styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pomotime_app/widgets/pomodoro_button_group.dart';
import 'package:pomotime_app/widgets/pomodoro_timer.dart';

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
          DropdownButton(
            items: null,
            onChanged: (String? value) {},
          ),
          const SizedBox(height: 54),
          const PomodoroTimer(),
          const SizedBox(height: 82),
          const PomodoroButtonGrup(),
          const SizedBox(height: 52),
          const MediaControlButton(),
        ],
      ),
    );
  }
}
