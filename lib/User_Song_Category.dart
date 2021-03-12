import 'package:flutter/material.dart';
import 'package:musicpro/User_Genres.dart';
import 'package:musicpro/User_Song.dart';

class User_Song_Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mixed for you',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
              InkWell(
                onTap: () {},
                child: Container(
                    child: Text('SEE ALL',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white70))),
              ),
            ],
          ),
        ),

        ///////////////////////////////////

        User_Song(width: 140,height:140),

      ],
    );
  }
}
