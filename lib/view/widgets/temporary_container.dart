import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TemporaryContainer() {
  return Center(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(offset: Offset(-4, 4), color: Colors.black.withAlpha(100))
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        Container(
          alignment: Alignment.center,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/home_image.png'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 0,left: 10,right: 10),
          child: Text("Accomodation",style: TextStyle(fontSize: 12),),
        )
      ]),
    ),
  );
}
