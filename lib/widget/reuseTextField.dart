

import 'package:flutter/material.dart';

TextField reuseTextField(String text, IconData icon, isPasswordType,
    TextEditingController controller){
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    autocorrect: !isPasswordType,
    enableSuggestions: !isPasswordType,
    cursorColor: Colors.grey,
    style: const TextStyle(
      fontWeight: FontWeight.w600,
        fontSize: 18,
        color: Color(0xFF958989)
    ),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: const Color(0xFF958989),
      ),
      //
      labelText: text,
      labelStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color(0xFF958989),
      ),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: const Color(0xFFE5E5E5),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)
      ),
    ),
    keyboardType: isPasswordType ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
}