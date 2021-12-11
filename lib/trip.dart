//import 'dart:html';

import 'package:flutter/material.dart';



class Trip extends StatelessWidget{
  final String authorUser = "Ferran";  //var??
  String title = "Milano skyscraper tour";
  String place = "Milano, Italy";
  String description = "this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip this is a description of my trip";
  late Image previewPic;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0),),
      InkWell( //so its clickable and it shows the ripple effect
        onTap: (){
          print("trip clicked");
        },
        child:
        Ink(  //like Container but the ripple effect shows
          //width: 50,
          //height: 50,
          decoration: BoxDecoration(color: const Color.fromRGBO(255, 170, 0, 0.5),/*border: Border.all()*/),
          child: Column(  //main
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(authorUser, textAlign: TextAlign.left, style: const TextStyle(fontSize: 18),),
              Row(        //title, place and pic
                children: [
                Column(   //title and place
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(title, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.normal),),
                    Row(children:[  //place, with padding
                      const Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),),
                      Text(place, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)])
                    ,
                ]),
                /*Image(image: previewPic)*/],
              ),
              Text(description, style: const TextStyle(fontSize: 15),),
            ],
          ),
          ),
      ),
      const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10),),
    ],);
  }
}