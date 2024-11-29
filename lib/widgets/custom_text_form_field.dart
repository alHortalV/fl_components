import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextCapitalization capitalization;
  final Map<String, String> formValues;
  final String formProperty;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    required this.obscureText,
    required this.capitalization,
    required this.formProperty,
    required this.formValues,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true, // Se pone el cursor en el campo de texto
      //initialValue: "Escribe aquí",
      textCapitalization:
          capitalization, // Para poner en mayúscula la primera letra de cada palabra
      keyboardType: keyboardType,
      obscureText:
          obscureText, // Para que el campo de texto sea de tipo contraseña
      onChanged: (value) =>
          formValues[formProperty] = value, // Para guardar el valor en el mapa
      validator: (value) {
        if (value!.length < 3) {
          return 'Mínimo 3 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: Icon(suffixIcon),
        icon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          // borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(20),
          //     topRight: Radius.circular(10)),
          // //borderSide: BorderSide()
        ),
      ),
    );
  }
}
