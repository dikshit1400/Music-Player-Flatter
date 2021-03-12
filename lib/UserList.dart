import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  UserList({this.color,this.userSong,this.userArtist,this.width,this.height,this.ontap});
  final Color color;
  final String userSong;
  final String userArtist;
  final double height;
  final double width;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(onTap: ontap,
              child: Container(
                height: height,
                width: width,
                color: color,
              ),
            ),
            SizedBox(height: 4,),
            Text('$userSong',style: TextStyle(fontSize: 15,color: Colors.white),),
            Text('$userArtist',style: TextStyle(fontSize: 15,color: Colors.grey),),

          ],
        ),
      ),
    );
  }
}
