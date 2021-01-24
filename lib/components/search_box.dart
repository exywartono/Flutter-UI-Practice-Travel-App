import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      width: double.infinity,
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 32.0,
            color: Colors.black38,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              'What are you looking for?',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
