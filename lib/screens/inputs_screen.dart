import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firstName'  : 'Ricardo',
      'lastName'   : 'Luna',
      'email'      : 'elritchzz@google.com',
      'password'   : '12345',
      'role'       : 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                
                SizedBox(height: 30),

                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  helperText: 'Solo letras',
                  formProperty: 'firstName', 
                  formValues:  formValues,
                ),
                SizedBox(height: 30),

                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido del usuario',
                  helperText: 'Solo letras', 
                  formProperty: 'lastName', 
                  formValues: formValues,
                ),
                SizedBox(height: 30),

                CustomInputField(
                  labelText: 'Correo',
                  hintText: 'Correo del usuario',
                  keyboardType: TextInputType.emailAddress, 
                  formProperty: 'email', 
                  formValues: formValues,
                ),
                SizedBox(height: 30),

                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña del usuario',
                  obscureText: true, 
                  formProperty: 'password', 
                  formValues: formValues,
                ),
                SizedBox(height: 30),

                DropdownButtonFormField(
                  items: [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser',child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer',child: Text('Developer')),
                    DropdownMenuItem(value: 'Developer Jr',child: Text('Developer Jr')),

                  ], 
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                ),

                SizedBox(height: 30),

            
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if ( !myFormKey.currentState!.validate() ){
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);
                  }, 
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                    )
                  )
              ],
            ),
          ),
          ),
      )
    );
  }
}

