import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

Widget CustomTextField(double width,String hint,{ String? prefixIconUrl, String? suffixIconUrl}){
  return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      width: width * 0.95,
      child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: prefixIconUrl==null? Container() : Image(image: AssetImage(prefixIconUrl),),
            suffixIcon: suffixIconUrl==null? Container() :Image(image: AssetImage(suffixIconUrl),),
              hintText: hint,
              hintStyle: TextStyle(color: Constants.randomTextColor),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Constants.orrangeColor,
                    width: 2,
                    style: BorderStyle.solid),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.3))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Constants.orrangeColor,
                      width: 2)))));
}