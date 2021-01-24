import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCard extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;

  DetailCard({this.title, this.desc, this.imageUrl});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.7), BlendMode.dstATop),
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 32.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'THINGS \nTO DO IN \n$title',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        letterSpacing: 1.5,
                        height: 1.0,
                      ),
                    ),
                  ),
                  Text(
                    desc,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: FlatButton(
                  onPressed: () {},
                  child: Container(
                    height: 60.0,
                    child: Column(
                      children: [
                        Text(
                          'Explore',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 32.0,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
