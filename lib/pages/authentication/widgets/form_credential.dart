import 'package:flutter/material.dart';

class FormCredentialInput extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscure;
  final Widget? suffix;
  const FormCredentialInput({
    Key? key,
    required this.label,
    required this.hint,
    this.obscure = false,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: label,
        hintText: hint,
        suffixIcon: suffix,
      ),
    );
  }
}
