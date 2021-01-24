import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Inbox',
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
