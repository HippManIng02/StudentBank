import 'package:flutter/material.dart';

Widget background(String image){
  return Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
            ) 
        ),
       );
}

Widget backimgandwidget(String image, Widget content){
  return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          background(image),
          content
        ],
      );
}