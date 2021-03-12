import 'package:flutter/material.dart';
import 'package:musicpro/SearchBar_Main.dart';
import 'package:musicpro/User_Song_Category.dart';
import 'package:musicpro/User_Song.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:search_choices/search_choices.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> imagesList = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.png",
  ];
  int currentPos = 0;
  Widget appBarTitle = new Text("Music");
  List<DropdownMenuItem> items = [];

  String selectedValueSingleDialog;
  bool search = false;
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 250,
                  child: SearchChoices.single(

                    items: items,
                    value: selectedValueSingleDialog,
                    hint: "Select one",
                    searchHint: "Select one",
                    onChanged: (value) {
                      setState(() {
                        selectedValueSingleDialog = value;
                      });
                      items.add(DropdownMenuItem(child: Text('$selectedValueSingleDialog'),));
                    },
                    isExpanded: true,
                  ),
                ),
              ),
              User_Song_Category(),
              ///image view first
              Container(
                  color: Colors.black,
                  child: CarouselSlider.builder(
                    itemCount: imagesList.length,
                    options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentPos = index;
                          });
                        }),
                    itemBuilder: (context, index, realIdx) {
                      return MyImageView(imagesList[index]);
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imagesList.map((url) {
                  int index = imagesList.indexOf(url);
                  return Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentPos == index
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  );
                }).toList(),
              ),
              User_Song_Category(),
              User_Song(height: 140,width: 180,),
              User_Song_Category(),

              User_Song_Category(),

              User_Song_Category(),


            ],
          ),
        ),


    );
  }



}

class MyImageView extends StatelessWidget {
  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(imgPath),
        ));
  }
}
