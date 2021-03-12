import 'package:flutter/material.dart';

class List_Genres extends StatelessWidget {
  List colors = [Colors.redAccent, Colors.green, Colors.yellow,Colors.pink,Colors.grey,Colors.tealAccent,Colors.green,Colors.yellowAccent,Colors.pink,Colors.orange,Colors.limeAccent,Colors.lightBlueAccent,Colors.red,Colors.white38];

  List_Genres({this.text1,this.text2,this.text3,this.color1,this.color2,this.color3});
  final String text1,text2,text3;
  final int color1,color2,color3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        color: Colors.black,
        height: 140,
        width: 140.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Genres_Container(text: text1,color: colors[color1],),

            SizedBox(
              height: 10,
            ),

            Genres_Container(text: text2,color: colors[color2],),

            SizedBox(
              height: 10,
            ),

            Genres_Container(text: text3,color: colors[color3],),

          ],
        ),
      ),
    );
  }


}

class Genres_Container extends StatelessWidget {

  Genres_Container({this.text,this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
            child:
            Stack(
              children: [
                Container(
                    child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize: 16),)),
                    height: 37.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.all(Radius.circular(05)),
                    )
                ),
                Container(
                  height: 37.5,
                  width: 10,
                  color: color,
                ),


              ],
            ),);
  }
}
