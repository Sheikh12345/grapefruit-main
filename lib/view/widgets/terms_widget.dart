import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'buttons.dart';

Widget getTermsWidget(void Function() function,String title,double width,double height,String mainImageUrl,String iconImageUrl,String bodyText,String buttonText){
  return Column(
    children: [
      Container(
        height: height * 0.8,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                padding: EdgeInsets.all(20),
                height: height * 0.2,
                child: Image(
                  image: AssetImage(
                      mainImageUrl),
                )),
            Container(
              height: height * 0.12,
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    child: Image(
                      image: AssetImage(
                          iconImageUrl),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    child: Text(title,style: TextStyle(fontSize: 24,color: Constants.orrangeColor,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15,bottom: 15,top: 15),
              alignment: Alignment.topLeft,
              height: height * 0.8,
              child: Text(bodyText,style: TextStyle(color: Constants.randomTextColor,fontSize: 14),textAlign: TextAlign.start),
            )
          ]),
        ),
      ),
      LoginOrSignUpPageButton(
          function: function,
          width: width,
          color: Constants.orrangeColor,
          height: 60,
          buttonText: buttonText,
          textColor: Colors.white,
          borderColor: Constants.borderColor,
          backgroundColor: Constants.orrangeColor)
    ],
  );
}