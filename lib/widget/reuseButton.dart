

import 'package:flutter/material.dart';

Container signInButton(BuildContext context, isLogin, Function onTap){
  return Container(
    width: 146,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10)
    ),
    child: ElevatedButton(onPressed: () {
      onTap();
    },
      child: Text(
        isLogin ? "SIGN IN" : "SIGN UP",
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if(states.contains(MaterialState.pressed)){
            return Colors.red;
          }
          return const Color(0xFFE97171);
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        )
      ),
    ),
  );
}
