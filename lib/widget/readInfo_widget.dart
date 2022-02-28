
import 'package:flutter/material.dart';
import 'package:untitled1/constants/constant_color.dart';

class ReadInfo extends StatefulWidget {
  final String text;
  final IconData iconData;
  const ReadInfo({ Key? key, required this.text, required this.iconData }) : super(key: key);

  @override
  _ReadInfoState createState() => _ReadInfoState();
}

class _ReadInfoState extends State<ReadInfo> {
  late final TextEditingController controller;
  late final IconData icon;

  @override
  void initState() {
    controller = TextEditingController(text: widget.text);
    icon = widget.iconData;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      
      child: TextFormField(
        readOnly: true,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400
        ),
        controller: controller,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide.none
          ),
          focusedBorder:const UnderlineInputBorder(
            borderSide: BorderSide.none
          ),
        prefixIcon: Icon(
          icon,
          size: 30,
          color: const Color(0xFF958989),
        )
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
}

class ReadPassword extends StatefulWidget {
  final String text;
  final IconData iconData;
  const ReadPassword({ Key? key, required this.text, required this.iconData }) : super(key: key);

  @override
  _ReadPasswordState createState() => _ReadPasswordState();
}

class _ReadPasswordState extends State<ReadPassword> {
  late final TextEditingController controller;
  late final IconData icon;

  @override
  void initState() {
    controller = TextEditingController(text: widget.text);
    icon = widget.iconData;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
      
      child: TextFormField(
        readOnly: true,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400
        ),
        
        obscureText: true,
        controller: controller,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder:const UnderlineInputBorder(
            borderSide: BorderSide.none
          ),
        prefixIcon: Icon(
          icon, 
          size: 30,
          color: const Color(0xFF958989),
        )
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
}


