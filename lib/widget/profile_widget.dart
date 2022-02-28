import 'package:flutter/material.dart';
import '../constants/constant_color.dart';


class ProfileShap extends StatelessWidget {
  final child;
  // final image;
  const ProfileShap({ Key? key, this.child, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(
          top: 25
        ),
        width: 124,
        height: 124,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // color: Colors.greenAccent,
          border: Border.all(
            width: 2,
            color: inputHexColor,
          ),
          boxShadow: [
            BoxShadow(
              color: inputHexColor,
              offset: const Offset(0, 1),
              // blurRadius: 2,
              // spreadRadius: 1
            )
          ]
        ),
        child: child,
      ),
    );
  
  }
}





