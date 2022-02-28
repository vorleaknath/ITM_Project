
import 'package:flutter/material.dart';

import '../constants/constant_color.dart';


class TextFieldWidget extends StatefulWidget {
  final String text; 
  final String label;
  // final ValueChanged<String> onChanged;
  const TextFieldWidget({ 
    Key? key, 
    required this.label, 
    // required this.onChanged, 
    required this.text 
    }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: 10,
            top: 10,
          ),
          child: Text(
            widget.label,
            style: const TextStyle(
              fontSize: 18, 
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Container(
          height: 60,
          width: 310,
          child: TextFormField(
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400
            ),
            // onChanged: widget.onChanged,

            controller: controller,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              filled: true,
              fillColor: inputHexColor,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none
                )
              )
            ),
          ),
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                // blurRadius: 1,
                // offset: Offset(0, 1)
              )
            ]
          ),
        )
      ],
    );
  }
}
