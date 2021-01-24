import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_things_todo_app/components/search_box.dart';
import 'package:ui_challenge_things_todo_app/pages/detail_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var dataCard = [
    {
      'title': 'Dubai',
      'desc': 'Ten things to do in dubai: \nGet more done on your last day!',
      'image':
          'https://images.unsplash.com/photo-1494675595046-ae42af7dc2ce?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80'
    },
    {
      'title': 'Abu Dhabi',
      'desc':
          'Ten things to do in abu dhabi: \nGet more done on your last day!',
      'image':
          'https://images.unsplash.com/photo-1521241191669-b9fba071b073?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'
    },
    {
      'title': 'Qatar',
      'desc': 'Ten things to do in qatar: \nGet more done on your last day!',
      'image':
          'https://images.unsplash.com/photo-1550350505-553196f2a527?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=282&q=80'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.filter_list,
            size: 32.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Things to do',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SearchBox(),
        ...dataCard.map((card) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailCard(
                      title: card['title'],
                      desc: card['desc'],
                      imageUrl: card['image'],
                    );
                  },
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                top: 10.0,
                left: 20.0,
                right: 20.0,
              ),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(
                    card['image'],
                  ),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              child: Center(
                child: Text(
                  card['title'],
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ],
    );
  }
}
