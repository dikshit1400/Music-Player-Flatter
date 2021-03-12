import 'package:flutter/material.dart';
import 'UserList.dart';
class User_Song extends StatelessWidget {
  User_Song({this.height,this.width});
  final double height;
  final double width;
  final String UserSong = 'Your Song';
  final String UserArtist = 'Your Artist';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return  UserList(color: Colors.red,userSong: UserSong,userArtist: UserArtist,width: width,height: height,ontap: null,);
        },

      ),
    );
  }
}