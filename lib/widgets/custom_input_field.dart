import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? textEmail;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.textEmail,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: textEmail,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 5 ? 'Minimo de 5 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText, // placeholder
        labelText: labelText, // placeholder del nombre
        helperText: helperText,
        // counterText: '5 caracteres', // texto a la abajo a la derecha
        // prefixIcon: const Icon(Icons.verified_user_outlined), // icon al comiezo encima de linea
        // suffixIcon:
        //     suffixIcon == null ? null : Icon(suffixIcon), // icon al final
        // icon: icon == null ? null : Icon(icon), // icon al comienzo
      ),
    );
  }
}
