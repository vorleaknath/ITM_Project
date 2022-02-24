import 'package:flutter/material.dart';

import '../constants/constant_color.dart';

class LabelContainer extends StatelessWidget {
  final Widget child;
  const LabelContainer({ Key? key, required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: inputHexColor,
            width: 2,
            )
        ),
        boxShadow: [
          BoxShadow(
            color: bgHexColor,
            offset: Offset.zero,
            blurRadius: 0,
            spreadRadius: 0,
          )
        ]
      ),
      child: child,
    );
  }
}