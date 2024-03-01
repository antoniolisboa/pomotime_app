import 'package:pomotime_app/widgets/media_control_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pomotime_app/widgets/pomodoro_button_group.dart';
import 'package:pomotime_app/widgets/pomodoro_timer.dart';
import 'package:pomotime_app/widgets/pomodoro_settings_selector_dropdown.dart';

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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PomodoroSettingsSelectorDropdown(),
          SizedBox(height: 54),
          PomodoroTimer(),
          SizedBox(height: 82),
          PomodoroButtonGrup(),
          SizedBox(height: 52),
          MediaControlButton(),
        ],
      ),
    );
  }
}
