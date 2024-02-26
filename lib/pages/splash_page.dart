import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xFF1B1F3B),
        child: Text(
          style: GoogleFonts.getFont(
            'Montserrat',
            color: const Color(0xFFFCF7F8),
            fontSize: 28,
          ),
          'PomoTime',
        ),
      ),
    );
  }
}
