import 'package:flutter/material.dart';
class UploadWidget extends StatelessWidget {
    final  IconData icon;
    final Color color; 
    final VoidCallback onClicked;
    final String text;
    final Color textColor;

  const UploadWidget({ 
    Key? key, 
    required this.icon, 
    required this.color,
    required this.onClicked,
    required this.text,
    required this.textColor,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
     child: Container(
      width: 310,
      height: 60,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          elevation: 1,
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),
         onPressed: onClicked,
         child: buildContent(),
      )
     )
     
    );
  }

  Widget buildContent(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 28, color: textColor,),

        const SizedBox(width: 10,),
        Text(
          text,
          style:  TextStyle(
            color: textColor,
            fontSize: 18
          ),
        )
      ],
    );
  }
}

Widget DisplayFileName(String fileName){
  return Center(
    child: Container(
      margin: const EdgeInsets.only(left: 40),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Text(
        fileName,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    ),
  );
}