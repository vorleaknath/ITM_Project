


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/pages/login.dart';
import 'package:untitled1/pages/register.dart';

Row signInOption(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
       "Don't have an account?",
        style: TextStyle(
          color: const Color(0xFF000000).withOpacity(0.45),
            fontSize: 16
        ),
      ),
      GestureDetector(
        onTap: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => const RegisterPage()));
        },
        child: Text(
         "Sign Up",
          style: TextStyle(color: const Color(0xFF3300FF).withOpacity(0.55),
              fontWeight: FontWeight.w600,
              fontSize: 16
        ),
      )
      )
    ],
  );

}


Row signUpOption(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Already have an account?",
        style: TextStyle(
            color: const Color(0xFF000000).withOpacity(0.45),
            fontSize: 16
        ),
      ),
      GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          },
          child: Text(
            "Sign In",
            style: TextStyle(
              color: const Color(0xFF3300FF).withOpacity(0.55),
              fontWeight: FontWeight.w600,
              fontSize: 16
            ),
          )
      )
    ],
  );
}