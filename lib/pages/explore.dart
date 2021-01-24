import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ToDo: Explore Page
    return Container(
      child: Center(
        child: Text(
          'Explore',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.black38,
              fontSize: 32.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
