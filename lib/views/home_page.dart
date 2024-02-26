import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Text('English Studies'),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              shape: BoxShape.circle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('short break'),
              SizedBox(width: 12),
              Text('short break'),
              SizedBox(width: 12),
              Text('short break'),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF1B1F3B),
              shape: CircleBorder(),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.5),
              child: Icon(
                Icons.play_arrow_rounded,
                color: Color(0xFFFCF7F8),
                size: 38,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
