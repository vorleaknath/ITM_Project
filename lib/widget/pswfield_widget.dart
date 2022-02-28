import 'package:flutter/material.dart';

import '../constants/constant_color.dart';


class PasswordFieldWidget extends StatefulWidget {
  final String text;
  final String label;

  const PasswordFieldWidget({ 
    Key? key, 
    required this.text, 
    required this.label 
    }) : super(key: key);

  @override
  _PasswordFieldWidgetState createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {

  late final TextEditingController controller;
  bool _isObscure = true;

  @override
  void initState() {
    controller = TextEditingController(text: widget.text);
    super.initState();
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

            obscureText: _isObscure,
            enableSuggestions: false,
            autocorrect: false,
            controller: controller,
            keyboardType: TextInputType.visiblePassword,
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
              ),

              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure? Icons.visibility : Icons.visibility_off,
                  color: btnHexColor,
                ),
                onPressed: (){
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
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