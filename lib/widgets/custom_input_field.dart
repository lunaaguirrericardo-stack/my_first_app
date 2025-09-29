import 'package:flutter/material.dart';


class CustomInputField extends StatelessWidget {

//Declaramos variables que serán parametros opcionales para la clase CustomInputField
   final String? hintText;
   final String? labelText;
   final String? helperText;
   final IconData? icon;
   final IconData? suffixIcon;
   final TextInputType? keyboardType;
   final bool obscureText;

   final String formProperty;
   final Map<String, String> formValues;


//Añadimos las variables al ? para inicializarlas como parametros de la clase
  const CustomInputField({
    super.key,
     this.hintText,
     this.labelText,
     this.helperText,
     this.icon,
     this.suffixIcon, 
     this.keyboardType, 
     this.obscureText = false, 
     required this.formProperty, 
     required this.formValues,
     
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      //Validación que muestra error al usar menos de 3 caracteres
      validator: (value) {
        if (value == null)  return 'Este campo es requerido';
          return value.length < 3 ? 'Minimo de 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
    
        //Personalizar caja de texto
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
         //prefixIcon: Icon(Icons.verified_user_outlined),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        ),
     
    );
  }
}