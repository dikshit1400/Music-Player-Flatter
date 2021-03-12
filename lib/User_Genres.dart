import 'dart:math';

import 'package:flutter/material.dart';
import 'List_genres.dart';
class User_Genres extends StatefulWidget {

  @override
  _User_GenresState createState() => _User_GenresState();
}

class _User_GenresState extends State<User_Genres> {
  int index = 0;
  int color1,color2,color3;
  String text1 = 'Hip-Hop',text2='Kids & Family',text3='2010';
  Random random = new Random();

  void setMethod()
  {
    setState(() {
      color1 = random.nextInt(15);
      color2 = random.nextInt(15);
      color3 = random.nextInt(15);
    });
  }

  @override
  void initState() {
    setMethod();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.black,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context,index){
          return List_Genres(color1: color1,color2: color2,color3: color3,text1: text1,text2: text2,text3: text3);
        },
        // children: <Widget>[
        //   List_Genres(color1: color1,color2: color2,color3: color3,text1: text1,text2: text2,text3: text3),
        //   List_Genres(color1: color1,color2: color2,color3: color3,text1: text1,text2: text2,text3: text3),
        //   List_Genres(color1: color1,color2: color2,color3: color3,text1: text1,text2: text2,text3: text3),
        //   List_Genres(color1: color1,color2: color2,color3: color3,text1: text1,text2: text2,text3: text3),
        //   List_Genres(color1: color1,color2: color2,color3: color3,text1: text1,text2: text2,text3: text3),
        // ],
      ),
    );
  }
}
