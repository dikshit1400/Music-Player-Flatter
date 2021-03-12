import 'package:flutter/material.dart';

import '../User_Genres.dart';
import '../User_Song_Category.dart';
class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: new AppBar(
        backgroundColor: Colors.black87,
        actions: [
        // Search Code here
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Song_Folder(),
              Song_Folder(),
              Song_Folder(),
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20),
                child: Divider(
                  thickness: 0.3,
                  color: Colors.white70,
                ),
              ),
              User_Song_Category(),
              User_Genres(),

            ],
          ),
        ),
    );
  }
}

class Song_Folder extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(child:
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 20,bottom: 20),
        child: InkWell(
          onTap: (){

          },
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Icon(Icons.queue_music_rounded,color: Colors.white,),
              SizedBox(
                width:20
              ),
              Text('New Releases',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.42,
              ),
              Icon(Icons.keyboard_arrow_right,color: Colors.white,),
              SizedBox(
                height: 5
              ),
          ],),
        ),
      ),
    );
  }
}
