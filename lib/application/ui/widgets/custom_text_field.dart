import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType inputType;
  final String hintText;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

  const CustomTextField({
    Key? key,
    required this.inputType,
    required this.hintText,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        labelText: hintText,
        hintText: hintText,
        labelStyle: const TextStyle(color: Colors.amber),
      ),
      style: const TextStyle(color: Colors.amber, fontSize: 25.0),
      keyboardType: inputType,
    );
  }
}
