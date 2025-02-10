import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
 final String hintText;
 // TextEditingController controller;
 final String? Function(String?)? validator;
 final TextInputType type;
 final bool isPassword;

 const CustomTextFiled({super.key, required this.hintText,
   // required this.controller,
   required this.validator,
   required this.type,
   this.isPassword= false, required TextEditingController controller,
 });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius:BorderRadius.circular(15),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        fillColor:const Color(0xffffffff),
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color:Color(0xff000000),fontWeight: FontWeight.w500 ),
      ),
      // controller: controller,
      validator: validator,
      keyboardType: type,
      obscureText: isPassword,
    );
  }
}
