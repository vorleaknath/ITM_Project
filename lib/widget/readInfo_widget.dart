
import 'package:flutter/material.dart';
import '../constants/constant_color.dart';

Widget ReadInfo(String text, IconData icon){
  return Container(
    height: 60,
    margin: const EdgeInsets.symmetric(vertical: 5,),
    padding: const EdgeInsets.symmetric(horizontal: 30,),
    child: ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    ),

    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: inputHexColor,
          width: 2
        )
      )
    ),
  );
}

