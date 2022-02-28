import 'package:flutter/material.dart';

Container reuseTextField(String text, IconData icon, isPasswordType, TextEditingController controller) {
    return Container(
      child: TextFormField(
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return "";
        //   }
        //   if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        //       .hasMatch(value)) {
        //     return "";
        //   }
        //   return null;
        // },
        controller: controller,
        obscureText: isPasswordType,
        autocorrect: !isPasswordType,
        enableSuggestions: !isPasswordType,
        cursorColor: Colors.grey,
        style: const TextStyle(
            fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF958989)),
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
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
        ),
        keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.black38,
        //     blurRadius: 4,
        //     offset: Offset(0, 3),
        //   ),
        // ],
      ),
    );
}

TextFormField passwordTextField(String text, IconData icon, isPasswordType,
    TextEditingController controller) {
  return TextFormField(
    // validator: (value) {
    //   if (value == null || value.isEmpty) {
    //     return "";
    //   }
    //   if (!RegExp(r'.{8,}$')
    //       .hasMatch(value)) {
    //     // return "Password at least 8 characters";
    //     return "";
    //   }
    //   return null;
    // },
    controller: controller,
    obscureText: isPasswordType,
    autocorrect: !isPasswordType,
    enableSuggestions: !isPasswordType,
    cursorColor: Colors.grey,
    style: const TextStyle(
        fontWeight: FontWeight.w600, fontSize: 18, color: Color(0xFF958989)),
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
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,

  );
}

